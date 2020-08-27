<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.2, Version=15.2.20.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dxp" %>
<%@ Register Assembly="DevExpress.Web.v15.2, Version=15.2.20.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dxe" %>
<%@ Register Assembly="DevExpress.Web.ASPxScheduler.v15.2, Version=15.2.20.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxScheduler" TagPrefix="dxwschs" %>
<%@ Register Assembly="DevExpress.XtraScheduler.v15.2.Core, Version=15.2.20.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.XtraScheduler" TagPrefix="cc1" %>

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
                    <dxwschs:ASPxScheduler ID="ASPxScheduler1" runat="server" Width="100%"
                        OnAppointmentFormShowing="ASPxScheduler1_AppointmentFormShowing" GroupType="Resource" ClientInstanceName="scheduler" OnAppointmentInserting="ASPxScheduler1_AppointmentInserting" OnBeforeExecuteCallbackCommand="ASPxScheduler1_BeforeExecuteCallbackCommand">
                        <OptionsForms AppointmentFormTemplateUrl="~/MyForms/UserAppointmentForm.ascx" />
                        <Views>
                            <DayView ResourcesPerPage="1" DayCount="3">
                                <TimeRulers>
                                    <cc1:TimeRuler />
                                </TimeRulers>
                            </DayView>
                            <WorkWeekView>
                                <TimeRulers>
                                    <cc1:TimeRuler />
                                </TimeRulers>
                            </WorkWeekView>
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
