<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxSpreadsheet.v14.2, Version=14.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxSpreadsheet" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v14.2, Version=14.2.9.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to implement setting custom margins in ASPxSpreadSheet</title>
    <script type="text/javascript">
        function OnCustomCommandExecuted(s, e) {
            var command = e.item.name;
            if (command == "CustomMargins")
                popup.Show();
        }
        function OnOkClick(s, e) {
            popup.Hide();
            spreadSheet.PerformCallback();
        }
        function OnCancelClick(s, e) {
            popup.Hide();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxSpreadsheet ID="ASPxSpreadsheet1" runat="server" ClientInstanceName="spreadSheet" OnCallback="ASPxSpreadsheet1_Callback">
            <ClientSideEvents CustomCommandExecuted="OnCustomCommandExecuted" />
            <RibbonTabs>
                <dx:SRFileTab>
                    <Groups>
                        <dx:SRFileCommonGroup>
                            <Items>
                                <dx:SRFilePrintCommand>
                                </dx:SRFilePrintCommand>
                            </Items>
                        </dx:SRFileCommonGroup>
                    </Groups>
                </dx:SRFileTab>
                <dx:SRPageLayoutTab>
                    <Groups>
                        <dx:SRPageSetupGroup>
                            <Items>
                                <dx:SRPageSetupMarginsCommand>
                                    <Items>
                                        <dx:SRPageSetupMarginsCommand>
                                        </dx:SRPageSetupMarginsCommand>
                                        <dx:RibbonDropDownButtonItem Name="CustomMargins" Text="Custom Margins">
                                        </dx:RibbonDropDownButtonItem>
                                    </Items>
                                </dx:SRPageSetupMarginsCommand>
                            </Items>
                        </dx:SRPageSetupGroup>
                    </Groups>
                </dx:SRPageLayoutTab>
            </RibbonTabs>
        </dx:ASPxSpreadsheet>

        <dx:ASPxPopupControl ID="ASPxPopupControl1" runat="server" ClientInstanceName="popup" HeaderText="Margins" 
            PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter">
            <ContentCollection>
                <dx:PopupControlContentControl>
                    <table>
                        <tr>
                            <td>
                                <dx:ASPxLabel ID="lblTop" runat="server" Text="Top:" />
                            </td>
                            <td>
                                <dx:ASPxSpinEdit ID="speTop" runat="server" Number="0" NumberType="Float" DecimalPlaces="2"
                                    DisplayFormatString="{0}''">
                                </dx:ASPxSpinEdit>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <dx:ASPxLabel ID="lblBottom" runat="server" Text="Bottom:" />
                            </td>
                            <td>
                                <dx:ASPxSpinEdit ID="speBottom" runat="server" Number="0" NumberType="Float" DecimalPlaces="2"
                                    DisplayFormatString="{0}''">
                                </dx:ASPxSpinEdit>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <dx:ASPxLabel ID="lblLeft" runat="server" Text="Left:" />
                            </td>
                            <td>
                                <dx:ASPxSpinEdit ID="speLeft" runat="server" Number="0" NumberType="Float" DecimalPlaces="2"
                                    DisplayFormatString="{0}''">
                                </dx:ASPxSpinEdit>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <dx:ASPxLabel ID="lblRight" runat="server" Text="Right:" />
                            </td>
                            <td>
                                <dx:ASPxSpinEdit ID="speRight" runat="server" Number="0" NumberType="Float" DecimalPlaces="2"
                                    DisplayFormatString="{0}''">
                                </dx:ASPxSpinEdit>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <dx:ASPxButton ID="btnOK" runat="server" Text="OK" AutoPostBack="false">
                                    <ClientSideEvents Click="OnOkClick" />
                                </dx:ASPxButton>                              
                            </td>
                            <td>
                                <dx:ASPxButton ID="btnCancel" runat="server" Text="Cancel" AutoPostBack="false">
                                    <ClientSideEvents Click="OnCancelClick" />
                                </dx:ASPxButton>
                            </td>
                        </tr>
                    </table>
                </dx:PopupControlContentControl>
            </ContentCollection>
        </dx:ASPxPopupControl>
    </form>
</body>
</html>
