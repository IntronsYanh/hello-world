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

public partial class setuserinfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string userinfo;
            userinfo = Session["userlogin"].ToString();
            DataTable data = Class1.ExecSel("select * from tbluser where userName='" + userinfo + "'");

            int id = Convert.ToInt32(data.Rows[0][0]);
            string info = "select * from tbluser where userID=" + id;
            DataTable dt = Class1.ExecSel(info);
            Label1.Text = dt.Rows[0][1].ToString();
            TextBox1.Text = dt.Rows[0][7].ToString();//性别
            TextBox2.Text = dt.Rows[0][2].ToString();//密码
            TextBox4.Text = dt.Rows[0][3].ToString();//真实姓名
            TextBox5.Text = dt.Rows[0][4].ToString();//地址
            TextBox6.Text = dt.Rows[0][5].ToString();//电话
            TextBox7.Text = dt.Rows[0][6].ToString();//邮编

            
        }
        
        
    }
    protected void tijiao_Click(object sender, EventArgs e)
    {
        string userinfo;
        userinfo = Session["userlogin"].ToString();
        DataTable data = Class1.ExecSel("select * from tbluser where userName='" + userinfo + "'");
        
        int id = Convert.ToInt32(data.Rows[0][0]);
        string info = "select * from tbluser where userID=" + id;//5%1%a%s%p%x
        DataTable dt = Class1.ExecSel(info);
        string sql = "update tbluser set userPwd='"+TextBox2.Text.Trim().ToString()+"',trueName='"+TextBox4.Text.Trim().ToString()+"',address='"+TextBox5.Text.Trim().ToString()+"',telephone='"+TextBox6.Text.Trim().ToString()+"',postcode='"+TextBox7.Text.Trim().ToString()+"',sex='"+TextBox1.Text.Trim().ToString()+"' where userID="+id;
        Class1.ExecSql(sql);
         Response.Redirect("userMain.aspx");
       
    }
}
