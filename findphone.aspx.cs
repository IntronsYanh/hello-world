using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class findphone : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String bookinfo;
        bookinfo = Request["findtype"].ToString();
        DataTable dt = Class1.ExecSel(bookinfo);
        int id = Convert.ToInt32(dt.Rows[0][0]);
        string info = "select * from tblPhone where phoneID=" + id;
        DataTable datatable = Class1.ExecSel(info);
      //  Label1.Text = dt.Rows[0][1].ToString();
        Label2.Text = dt.Rows[0][2].ToString();
        Label3.Text = dt.Rows[0][3].ToString();
        Label4.Text = dt.Rows[0][4].ToString();
        Label5.Text = dt.Rows[0][5].ToString();
        Label6.Text = dt.Rows[0][6].ToString();
        if (Convert.ToInt32(dt.Rows[0][8]) == 0)
        {
            Label7.Text = "没有存货";
        }
        if (Convert.ToInt32(dt.Rows[0][8]) == 1)
        {
            Label7.Text = "有存货";
        }
        Image1.ImageUrl = "~/picture/" + dt.Rows[0][7].ToString();
    }
}
