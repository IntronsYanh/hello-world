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

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userlogin"] != null)
        {
            Label1.Text = Session["userlogin"].ToString() + "  你好，欢迎你进入手机商城！";
        }
        else
        {
            Response.Redirect("login.aspx");
        }
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string findtype = "";
        switch (DropDownList1.SelectedValue)
        {
            case "手机名称":
                findtype = "select * from tblPhone where phoneName like '%" + TextBox1.Text + "%'";
                break;

            case "手机型号":
                findtype = " select * from tblPhone  where phoneAuthor like '%" + TextBox1.Text + "%'";
                break;
            case "手机产地":
                findtype = " select * from tblPhone where publisher like '%" + TextBox1.Text + "%'";
                break;
        }
        Response.Cookies["findtype"].Value = findtype;
        Response.Cookies["findtype"].Expires = DateTime.Now.AddHours(1);
        Response.Redirect("findphone.aspx");
       
    }
}
