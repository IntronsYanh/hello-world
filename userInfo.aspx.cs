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

public partial class userInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string userinfomation;
        userinfomation = Session["userlogin"].ToString();
         DataTable dt = Class1.ExecSel("select * from tbluser where userName='"+userinfomation+"'");
        int id = Convert.ToInt32(dt.Rows[0][0]);
        string info = "select * from tbluser where userID="+id;
        DataTable datatable = Class1.ExecSel(info);
        Label1.Text = datatable.Rows[0][1].ToString();
        Label2.Text = datatable.Rows[0][3].ToString();
        Label3.Text = datatable.Rows[0][4].ToString();
        Label4.Text = datatable.Rows[0][5].ToString();//5&1&a&s&p&x
        Label5.Text = datatable.Rows[0][6].ToString();
        Label6.Text = datatable.Rows[0][7].ToString();
        if (Convert.ToInt32( datatable.Rows[0][8].ToString())==0)
        {
             Label7.Text = "普通用户";
        }
        if (Convert.ToInt32(datatable.Rows[0][8].ToString()) == 1)
        {
            Label7.Text = "管理员";
        }
       

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("setuserinfo.aspx");
    }
}
