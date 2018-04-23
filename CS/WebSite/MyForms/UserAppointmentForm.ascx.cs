using System;
using System.Web.UI;
using DevExpress.XtraScheduler;
using DevExpress.Web.ASPxEditors;
using DevExpress.Web.ASPxScheduler;
using DevExpress.Web.ASPxScheduler.Internal;

public partial class AppointmentForm : SchedulerFormControl {
	public bool CanShowReminders {
		get {
			return ((AppointmentFormTemplateContainer)Parent).Control.Storage.EnableReminders;
		}
	}

	protected void Page_Load(object sender, EventArgs e) {
		//PrepareChildControls();
		tbSubject.Focus();
	}
	public override void DataBind() {
		base.DataBind();

		AppointmentFormTemplateContainer container = (AppointmentFormTemplateContainer)Parent;
		Appointment apt = container.Appointment;
		edtLabel.SelectedIndex = apt.LabelId;
		edtStatus.SelectedIndex = apt.StatusId;
		if (!Object.Equals(apt.ResourceId, Resource.Empty.Id))
			edtResource.Value = apt.ResourceId.ToString();
		else
			edtResource.Value = SchedulerIdHelper.EmptyResourceId;

		AppointmentRecurrenceForm1.Visible = container.ShouldShowRecurrence;

		if (container.Appointment.HasReminder) {
			cbReminder.Value = container.Appointment.Reminder.TimeBeforeStart.ToString();
			chkReminder.Checked = true;
		}
		else {
			cbReminder.ClientEnabled = false;
		}

		btnOk.ClientSideEvents.Click = container.SaveHandler;
		btnCancel.ClientSideEvents.Click = container.CancelHandler;
		btnDelete.ClientSideEvents.Click = container.DeleteHandler;
		//btnDelete.Enabled = !container.IsNewAppointment;
	}

	protected override void PrepareChildControls() {
		AppointmentFormTemplateContainer container = (AppointmentFormTemplateContainer)Parent;
		ASPxScheduler control = container.Control;

		AppointmentRecurrenceForm1.EditorsInfo = new EditorsInfo(control, control.Styles.FormEditors, control.Images.FormEditors, control.Styles.Buttons);
		base.PrepareChildControls();
	}
	protected override ASPxEditBase[] GetChildEditors() {
		ASPxEditBase[] edits = new ASPxEditBase[] {
			lblSubject, tbSubject,
			lblLocation, tbLocation,
			lblLabel, edtLabel,
			lblStartDate, edtStartDate,
			lblEndDate, edtEndDate,
			lblStatus, edtStatus,
			lblAllDay, chkAllDay,
			lblResource, edtResource,
			tbDescription, cbReminder
		};
		return edits;
	}
	protected override ASPxButton[] GetChildButtons() {
		ASPxButton[] buttons = new ASPxButton[] {
			btnOk, btnCancel, btnDelete
		};
		return buttons;
	}
}
