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

public partial class phoneinfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        string BID = Request["bid"].ToString();
        string sql = "select * from tblPhone where phoneID=" + BID;
        DataTable dt = Class1.ExecSel(sql);
        Label1.Text = dt.Rows[0][1].ToString();
        Label2.Text = dt.Rows[0][2].ToString();
        Label3.Text = dt.Rows[0][3].ToString();
        Label4.Text = dt.Rows[0][4].ToString();
        Label5.Text = dt.Rows[0][5].ToString();
        Label6.Text = dt.Rows[0][6].ToString();
        /*if (Convert.ToInt32(dt.Rows[0][8]) == 0)
        {
            CheckBox1.Checked = false;
            CheckBox1.Text = "否";
        }
        else
            CheckBox1.Checked = true;*/
        Image1.ImageUrl = "~/picture/" + dt.Rows[0][7].ToString();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("userMain.aspx");
    }
  

}
