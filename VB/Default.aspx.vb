Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports DevExpress.Web.ASPxSpreadsheet
Imports DevExpress.Spreadsheet
Imports DevExpress.Office

Partial Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
        ASPxSpreadsheet1.Document.Worksheets(0).Cells(0).Value = "Test"
    End Sub

    Protected Sub ASPxSpreadsheet1_Callback(ByVal sender As Object, ByVal e As DevExpress.Web.CallbackEventArgsBase)
        Dim spreadSheet As ASPxSpreadsheet = DirectCast(sender, ASPxSpreadsheet)
        Dim margins As Margins = spreadSheet.Document.Worksheets(0).ActiveView.Margins
        spreadSheet.Document.Unit = DocumentUnit.Inch
        margins.Top = CSng(speTop.Number)
        margins.Bottom = CSng(speBottom.Number)
        margins.Left = CSng(speLeft.Number)
        margins.Right = CSng(speRight.Number)
    End Sub

End Class