<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128546506/15.2.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/E4135)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [CustomEvents.cs](./CS/WebSite/App_Code/CustomEvents.cs) (VB: [CustomEvents.vb](./VB/WebSite/App_Code/CustomEvents.vb))
* [Helpers.cs](./CS/WebSite/App_Code/Helpers.cs) (VB: [Helpers.vb](./VB/WebSite/App_Code/Helpers.vb))
* [UserAppointmentFormClass.cs](./CS/WebSite/App_Code/UserAppointmentFormClass.cs) (VB: [UserAppointmentFormClass.vb](./VB/WebSite/App_Code/UserAppointmentFormClass.vb))
* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx](./VB/WebSite/Default.aspx))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
* [UserAppointmentForm.ascx](./CS/WebSite/MyForms/UserAppointmentForm.ascx) (VB: [UserAppointmentForm.ascx](./VB/WebSite/MyForms/UserAppointmentForm.ascx))
* [UserAppointmentForm.ascx.cs](./CS/WebSite/MyForms/UserAppointmentForm.ascx.cs) (VB: [UserAppointmentForm.ascx.vb](./VB/WebSite/MyForms/UserAppointmentForm.ascx.vb))
<!-- default file list end -->
# How to display a popup in the custom appointment form


<p>This example illustrates how to invoke an <a href="http://documentation.devexpress.com/#AspNet/clsDevExpressWebASPxPopupControlASPxPopupControltopic"><u>ASPxPopupControl</u></a> in the custom appointment form so that the end user can select a predefined value for a custom field. This task can be easily accomplished by adding the following markup to the UserAppointmentForm.ascx file:<br />
</p>

```aspx
<dxe:ASPxButton ID="ASPxButton2" runat="server" AutoPostBack="False" Text="Select predefined price">
  <ClientSideEvents Click="function(s, e) { popup.Show(); }" />
</dxe:ASPxButton>
...

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

```

<p>Here is a screenshot that illustrates this functionality in action:</p><p><img src="https://raw.githubusercontent.com/DevExpress-Examples/how-to-display-a-popup-in-the-custom-appointment-form-e4135/15.2.4+/media/4796c657-3302-4d80-ba92-8e2c781e09c3.png"></p><p><strong>See Also:</strong><br />
<a href="https://www.devexpress.com/Support/Center/p/K18145">How to modify the appointment editing form for working with custom fields (step-by-step guide)</a></p>

<br/>


