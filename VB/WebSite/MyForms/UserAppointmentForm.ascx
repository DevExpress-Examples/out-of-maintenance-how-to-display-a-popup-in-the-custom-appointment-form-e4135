<%@ Control Language="vb" AutoEventWireup="true" Inherits="AppointmentForm" CodeFile="UserAppointmentForm.ascx.vb" %>
<%@ Register Assembly="DevExpress.Web.v11.1, Version=11.1.12.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxPopupControl" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v11.1, Version=11.1.12.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v11.1" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.ASPxScheduler.v11.1" Namespace="DevExpress.Web.ASPxScheduler.Controls" TagPrefix="dxsc" %>
<%@ Register Assembly="DevExpress.Web.ASPxScheduler.v11.1" Namespace="DevExpress.Web.ASPxScheduler" TagPrefix="dxwschs" %>

<table class="dxscAppointmentForm" cellpadding="0" cellspacing="0" style="width: 100%; height: 230px;">
	<tr>
		<td class="dxscDoubleCell" colspan="2">
			<table class="dxscLabelControlPair" cellpadding="0" cellspacing="0">
				<tr>
					<td class="dxscLabelCell">
						<dxe:ASPxLabel ID="lblSubject" runat="server" AssociatedControlID="tbSubject" Text="Subject:">
						</dxe:ASPxLabel>
					</td>
					<td class="dxscControlCell">
						<dxe:ASPxTextBox ClientInstanceName="_dx" ID="tbSubject" runat="server" Width="100%" Text='<%#(CType(Container, UserAppointmentFormTemplateContainer)).Appointment.Subject%>' />
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr> 
		<td class="dxscSingleCell">
			<table class="dxscLabelControlPair" cellpadding="0" cellspacing="0">
				<tr>
					<td class="dxscLabelCell">
						<dxe:ASPxLabel ID="lblLocation" runat="server" AssociatedControlID="tbLocation" Text="Location:">
						</dxe:ASPxLabel>
					</td>
					<td class="dxscControlCell">
						<dxe:ASPxTextBox ClientInstanceName="_dx" ID="tbLocation" runat="server" Width="100%" Text='<%#(CType(Container, UserAppointmentFormTemplateContainer)).Appointment.Location%>' />
					</td>
				</tr>
			</table>
		</td>
		<td class="dxscSingleCell">
			<table class="dxscLabelControlPair" cellpadding="0" cellspacing="0">
				<tr>
					<td class="dxscLabelCell" style="padding-left: 25px;">
						<dxe:ASPxLabel ID="lblLabel" runat="server" AssociatedControlID="edtLabel" Text="Label:">
						</dxe:ASPxLabel>
					</td>
					<td class="dxscControlCell">
						<dxe:ASPxComboBox ClientInstanceName="_dx" ID="edtLabel" runat="server" Width="100%" DataSource='<%#(CType(Container, UserAppointmentFormTemplateContainer)).LabelDataSource%>' />
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td class="dxscSingleCell">
			<table class="dxscLabelControlPair" cellpadding="0" cellspacing="0">
				<tr>
					<td class="dxscLabelCell">
						<dxe:ASPxLabel ID="lblStartDate" runat="server" AssociatedControlID="edtStartDate" Text="Start time:" Wrap="false">
						</dxe:ASPxLabel>
					</td>
					<td class="dxscControlCell">
						<dxe:ASPxDateEdit ClientInstanceName="_dx" ID="edtStartDate" runat="server" Width="100%" Date='<%#(CType(Container, UserAppointmentFormTemplateContainer)).Start%>' EditFormat="DateTime" />
					</td>
				</tr>
			</table>
		</td>
		<td class="dxscSingleCell">
			<table class="dxscLabelControlPair" cellpadding="0" cellspacing="0">
				<tr>
					<td class="dxscLabelCell" style="padding-left: 25px;">
						<dxe:ASPxLabel runat="server" ID="lblEndDate" Text="End time:" Wrap="false" AssociatedControlID="edtEndDate"/>
					</td>
					<td class="dxscControlCell">
						<dxe:ASPxDateEdit id="edtEndDate" runat="server" ClientInstanceName="_dx" Date='<%#(CType(Container, UserAppointmentFormTemplateContainer)).End%>'
							EditFormat="DateTime" Width="100%">
						</dxe:ASPxDateEdit>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td class="dxscSingleCell">
			<table class="dxscLabelControlPair" cellpadding="0" cellspacing="0">
				<tr>
					<td class="dxscLabelCell">
						<dxe:ASPxLabel ID="lblStatus" runat="server" AssociatedControlID="edtStatus" Text="Show time as:" Wrap="false">
						</dxe:ASPxLabel>
					</td>
					<td class="dxscControlCell">
						<dxe:ASPxComboBox ClientInstanceName="_dx" ID="edtStatus" runat="server" Width="100%" DataSource='<%#(CType(Container, UserAppointmentFormTemplateContainer)).StatusDataSource%>' />
					</td>
				</tr>
			</table>
		</td>
		<td class="dxscSingleCell" style="padding-left: 22px;">
			<table class="dxscLabelControlPair" cellpadding="0" cellspacing="0">
				<tr>
					<td style="width: 20px; height: 20px;">
						<dxe:ASPxCheckBox ClientInstanceName="_dx" ID="chkAllDay" runat="server" Checked='<%#(CType(Container, UserAppointmentFormTemplateContainer)).Appointment.AllDay%>' />
					</td>
					<td style="padding-left: 2px;">
						<dxe:ASPxLabel ID="lblAllDay" runat="server" Text="All day event" AssociatedControlID="chkAllDay" />
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
<%
   If CanShowReminders Then
%>
		<td class="dxscSingleCell">
<%
   Else
%>
		<td class="dxscDoubleCell" colspan="2">
<%
   End If
%>
			<table class="dxscLabelControlPair" cellpadding="0" cellspacing="0">
				<tr>
					<td class="dxscLabelCell">
						<dxe:ASPxLabel ID="lblResource" runat="server" AssociatedControlID="edtResource" Text="Resource:">
						</dxe:ASPxLabel>
					</td>
					<td class="dxscControlCell">
						<dxe:ASPxComboBox ClientInstanceName="_dx" ID="edtResource" runat="server" Width="100%" DataSource='<%#(CType(Container, UserAppointmentFormTemplateContainer)).ResourceDataSource%>' Enabled='<%#(CType(Container, UserAppointmentFormTemplateContainer)).CanEditResource%>' />
					</td>
				</tr>
			</table>
		</td>
<%
   If CanShowReminders Then
%>
		<td class="dxscSingleCell">
			<table class="dxscLabelControlPair" cellpadding="0" cellspacing="0">
				<tr>
					<td class="dxscLabelCell" style="padding-left: 22px;">
						<table class="dxscLabelControlPair" cellpadding="0" cellspacing="0">
							<tr>
								<td style="width: 20px; height: 20px;">
									<dxe:ASPxCheckBox ClientInstanceName="_dx" ID="chkReminder" runat="server"> 
										<ClientSideEvents CheckedChanged="function(s, e) { OnChkReminderCheckedChanged(s, e); }" />
									</dxe:ASPxCheckBox>
								</td>
								<td style="padding-left: 2px;">
									<dxe:ASPxLabel ID="lblReminder" runat="server" Text="Reminder" AssociatedControlID="chkReminder" />
								</td>
							</tr>
						</table>
					</td>
					<td class="dxscControlCell" style="padding-left: 3px">
						<dxe:ASPxComboBox  ID="cbReminder" ClientInstanceName="_dxAppointmentForm_cbReminder" runat="server" Width="100%" DataSource='<%#(CType(Container, UserAppointmentFormTemplateContainer)).ReminderDataSource%>' />
					</td>
				</tr>
			</table>
		</td>
<%
   End If
%>
	</tr>
	<tr>
		<td class="dxscSingleCell">
			<table class="dxscLabelControlPair" cellpadding="0" cellspacing="0">
				<tr>
					<td class="dxscLabelCell">
						<dxe:ASPxLabel ID="ASPxLabel1" runat="server" AssociatedControlID="tbField1" Text="Price:">
						</dxe:ASPxLabel>
					</td>
					<td class="dxscControlCell">
						<dxe:ASPxTextBox ID="tbField1" runat="server" Width="100%" Text='<%#(CType(Container, UserAppointmentFormTemplateContainer)).Field1%>' BackColor="Ivory" ClientInstanceName="tbField1">
						</dxe:ASPxTextBox>
					</td>
				</tr>
			</table>
			</td>
			<td class="dxscSingleCell" colspan="2">
				<dxe:ASPxButton ID="ASPxButton2" runat="server" AutoPostBack="False" Text="Select predefined price">
					<ClientSideEvents Click="function(s, e) { popup.Show(); }" />
				</dxe:ASPxButton>
			</td>
	</tr>
	<tr>
		<td class="dxscDoubleCell" colspan="2" style="height: 90px;">

			<dxe:ASPxMemo ID="memField2" runat="server" Text='<%#(CType(Container, UserAppointmentFormTemplateContainer)).Field2%>' BackColor="Ivory" Rows="6" Width="100%">
			</dxe:ASPxMemo>
			<dxe:ASPxMemo ClientInstanceName="_dx" ID="tbDescription" runat="server" Width="100%" Rows="3" Text='<%#(CType(Container, UserAppointmentFormTemplateContainer)).Appointment.Description%>' />
			&nbsp;
		</td>
	</tr>
</table>

<dxsc:AppointmentRecurrenceForm ID="AppointmentRecurrenceForm1" runat="server"
	IsRecurring='<%#(CType(Container, UserAppointmentFormTemplateContainer)).Appointment.IsRecurring%>' 
	DayNumber='<%#(CType(Container, UserAppointmentFormTemplateContainer)).RecurrenceDayNumber%>' 
	End='<%#(CType(Container, UserAppointmentFormTemplateContainer)).RecurrenceEnd%>' 
	Month='<%#(CType(Container, UserAppointmentFormTemplateContainer)).RecurrenceMonth%>' 
	OccurrenceCount='<%#(CType(Container, UserAppointmentFormTemplateContainer)).RecurrenceOccurrenceCount%>' 
	Periodicity='<%#(CType(Container, UserAppointmentFormTemplateContainer)).RecurrencePeriodicity%>' 
	RecurrenceRange='<%#(CType(Container, UserAppointmentFormTemplateContainer)).RecurrenceRange%>' 
	Start='<%#(CType(Container, UserAppointmentFormTemplateContainer)).RecurrenceStart%>' 
	WeekDays='<%#(CType(Container, UserAppointmentFormTemplateContainer)).RecurrenceWeekDays%>' 
	WeekOfMonth='<%#(CType(Container, UserAppointmentFormTemplateContainer)).RecurrenceWeekOfMonth%>' 
	RecurrenceType='<%#(CType(Container, UserAppointmentFormTemplateContainer)).RecurrenceType%>'
	IsFormRecreated='<%#(CType(Container, UserAppointmentFormTemplateContainer)).IsFormRecreated%>' >
</dxsc:AppointmentRecurrenceForm>

<table cellpadding="0" cellspacing="0" style="width: 100%; height: 35px;">
	<tr>
		<td style="width: 100%; height: 100%;" align="center">
			<table style="height: 100%;">
				<tr>
					<td>
						<dxe:ASPxButton runat="server" ClientInstanceName="_dx" ID="btnOk" Text="OK" UseSubmitBehavior="false" AutoPostBack="false" 
							EnableViewState="false" Width="91px"/>
					</td>
					<td>
						<dxe:ASPxButton runat="server" ClientInstanceName="_dx" ID="btnCancel" Text="Cancel" UseSubmitBehavior="false" AutoPostBack="false" EnableViewState="false" 
							Width="91px" CausesValidation="False" />
					</td>
					<td>
						<dxe:ASPxButton runat="server" ClientInstanceName="_dx" ID="btnDelete" Text="Delete" UseSubmitBehavior="false"
							AutoPostBack="false" EnableViewState="false" Width="91px"
							Enabled='<%#(CType(Container, UserAppointmentFormTemplateContainer)).CanDeleteAppointment%>'
							CausesValidation="False" />
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
<table cellpadding="0" cellspacing="0" style="width: 100%;">
	<tr>
		<td style="width: 100%;" align="left">
			<dxsc:ASPxSchedulerStatusInfo runat="server" ID="schedulerStatusInfo" Priority="1" MasterControlId='<%#(CType(Container, DevExpress.Web.ASPxScheduler.AppointmentFormTemplateContainer)).ControlId%>' />
		</td>
	</tr>
</table>
<script id="dxss_ASPxSchedulerAppoinmentForm" type="text/javascript">
	function OnChkReminderCheckedChanged(s, e) {
		var isReminderEnabled = s.GetValue();
		if (isReminderEnabled)
			_dxAppointmentForm_cbReminder.SetSelectedIndex(3);
		else
			_dxAppointmentForm_cbReminder.SetSelectedIndex(-1);

		_dxAppointmentForm_cbReminder.SetEnabled(isReminderEnabled);
	}
</script>

<dx:ASPxPopupControl ID="ASPxPopupControl1" runat="server" ClientInstanceName="popup" Height="87px" Width="156px" 
	AllowDragging="true" PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" HeaderText="Predefined price">
	<ContentCollection>
		<dx:PopupControlContentControl runat="server">
			<dxe:ASPxLabel ID="ASPxLabel2" runat="server" Text="Select price:" />
			<dxe:ASPxListBox ID="ASPxListBox1" runat="server" ClientInstanceName="listBox">
				<Items>
					<dxe:ListEditItem Text="10" Value="10" />
					<dxe:ListEditItem Text="20" Value="20" />
					<dxe:ListEditItem Text="30" Value="30" />
				</Items>
			</dxe:ASPxListBox>
			<dxe:ASPxButton ID="ASPxButton1" runat="server" AutoPostBack="False" Text="Apply">
				<ClientSideEvents Click="function(s, e) {   
	popup.Hide();
	tbField1.SetText(listBox.GetSelectedItem().value);
}" />
			</dxe:ASPxButton>
		</dx:PopupControlContentControl>
	</ContentCollection>
</dx:ASPxPopupControl>