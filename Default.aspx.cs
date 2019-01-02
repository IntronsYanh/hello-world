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

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void denglutm_Click(object sender, EventArgs e)
    {
        string sql_user = string.Format("select count(*) from tbluser where userName='" + tbuser.Text + "' and userPwd='" + tbpwd.Text + "'");
        int usercount = int.Parse(Class1.SelOne(sql_user));
        if (TextBox1.Text.ToLower() != Request.Cookies["CheckCode"].Value.ToString().ToLower())//验证码
        {

            Class1.AlertShow("验证码错误", "Default.aspx");
        }
        else
        {
            if (usercount == 0)
            {


                if (tbuser.Text == null || tbpwd.Text == null)
                {

                    Class1.AlertShow("用户名或密码不能为空", "Default.aspx");
                }
                else
                {
                    Class1.AlertShow("用户名或密码错误", "Default.aspx");
                }

            }


            else
            {
                Session["userlogin"] = tbuser.Text;
                string userinfo = Session["userlogin"].ToString();
                DataTable dt = Class1.ExecSel("select * from tbluser where userName='" + userinfo + "'");
                int id = Convert.ToInt32(dt.Rows[0][0]);
                string info = "select * from tbluser where userID=" + id;
                DataTable datatable = Class1.ExecSel(info);
                if (Convert.ToInt32(datatable.Rows[0][8].ToString()) == 1)
                {
                    Response.Redirect("admin.aspx");
                }
                else

                    Class1.AlertShow("登录成功！", "UserMain.aspx");

            }
        }

    }
    protected void twtype_SelectedNodeChanged(object sender, EventArgs e)
    {
        string typeid = twtype.SelectedValue;
        SqlDataSource1.SelectCommand = string.Format("select * from tblPhone where typeID='" + typeid + "'");
        GridView1.DataBind();
        if (GridView1.Rows.Count == 0)
            Label8.Visible = true;
        else
            Label8.Visible = false;

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
