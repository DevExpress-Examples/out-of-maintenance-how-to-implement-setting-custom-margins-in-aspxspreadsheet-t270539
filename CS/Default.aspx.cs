using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web.ASPxSpreadsheet;
using DevExpress.Spreadsheet;
using DevExpress.Office;

public partial class _Default : System.Web.UI.Page {
	
	protected void Page_Load(object sender, EventArgs e) {
        ASPxSpreadsheet1.Document.Worksheets[0].Cells[0].Value = "Test";
    }

    protected void ASPxSpreadsheet1_Callback(object sender, DevExpress.Web.CallbackEventArgsBase e) {
        ASPxSpreadsheet spreadSheet = (ASPxSpreadsheet)sender;
        Margins margins = spreadSheet.Document.Worksheets[0].ActiveView.Margins;
        spreadSheet.Document.Unit = DocumentUnit.Inch;
        margins.Top = (float)speTop.Number;
        margins.Bottom = (float)speBottom.Number;
        margins.Left = (float)speLeft.Number;
        margins.Right = (float)speRight.Number;        
    }
	
}