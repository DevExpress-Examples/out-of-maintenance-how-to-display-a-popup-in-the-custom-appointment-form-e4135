<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v11.1, Version=11.1.12.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxPanel" TagPrefix="dxp" %>
<%@ Register Assembly="DevExpress.Web.ASPxEditors.v11.1, Version=11.1.12.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>

<%@ Register assembly="DevExpress.Web.ASPxScheduler.v11.1, Version=11.1.12.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxScheduler" tagprefix="dxwschs" %>
<%@ Register assembly="DevExpress.XtraScheduler.v11.1.Core, Version=11.1.12.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraScheduler" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <dxp:ASPxPanel ID="ASPxPanel1" runat="server" Width="100%">
            <PanelCollection>
                <dxp:PanelContent runat="server" _designerRegion="0">
                    &nbsp;&nbsp;
                    <br />
        <dxwschs:ASPxScheduler id="ASPxScheduler1" runat="server" Width="100%" 
        OnAppointmentFormShowing="ASPxScheduler1_AppointmentFormShowing" GroupType="Resource"  ClientInstanceName="scheduler" OnAppointmentInserting="ASPxScheduler1_AppointmentInserting" OnBeforeExecuteCallbackCommand="ASPxScheduler1_BeforeExecuteCallbackCommand">
        <OptionsForms AppointmentFormTemplateUrl="~/MyForms/UserAppointmentForm.ascx" />
        <Views>
            <DayView ResourcesPerPage="1" DayCount="3"><TimeRulers><cc1:TimeRuler /></TimeRulers></DayView>
            <WorkWeekView><TimeRulers><cc1:TimeRuler /></TimeRulers></WorkWeekView>
            <WeekView ResourcesPerPage="1">
            </WeekView>
        </Views>
            <OptionsBehavior RemindersFormDefaultAction="Custom" ShowRemindersForm="False" />
    </dxwschs:ASPxScheduler>
                </dxp:PanelContent>
            </PanelCollection>
        </dxp:ASPxPanel>
        &nbsp;
<asp:ObjectDataSource ID="appointmentDataSource" runat="server" DataObjectTypeName="CustomEvent" TypeName="CustomEventDataSource" DeleteMethod="DeleteMethodHandler" SelectMethod="SelectMethodHandler" InsertMethod="InsertMethodHandler" UpdateMethod="UpdateMethodHandler" OnObjectCreated="appointmentsDataSource_ObjectCreated" />

    </form>

</body>
</html>
