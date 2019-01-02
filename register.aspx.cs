using System;
using System.Data;
using System.Configuration;
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
    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (args.Value.Length >= 6)
        {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;

        }
    }

    protected void tijiao_Click(object sender, EventArgs e)
    {
        
        
        string sql1 = "select count(*) from tbluser where userName='" + TextBox1.Text + "'";
        int i = int.Parse(Class1.SelOne(sql1));
        if (TextBox1.Text == "")
        {
            Class1.AlertShow("请填写用户姓名！");

        }
        if (TextBox2.Text == "")
        {
            Class1.AlertShow("请填写密码！");

        }
        if (TextBox4.Text== "")
        {
            Class1.AlertShow("请填写真实姓名！");

        }
        if (TextBox5.Text == "")
        {
            Class1.AlertShow("请填写地址！");

        }
        if (TextBox6.Text== "")
        {
            Class1.AlertShow("请填写电话！");

        }
        if (TextBox7.Text == "")
        {
            Class1.AlertShow("请填写邮编！");

        }
        if (boy.Text == ""&& girl .Text =="")
        {
            Class1.AlertShow("请填性别！");

        }
        if (i == 0)
        {
          
            string xingbie;
            if (boy.Checked)
            {
                xingbie = "男";
            }
            else
            {
                xingbie = "女";
            }
            string sql = "insert into tbluser (userName,userPwd,trueName,address,telephone,postcode,sex,userType) values ('" + TextBox1.Text + "','" + TextBox2.Text + " ','" + TextBox4.Text + " ',' " + TextBox5.Text + "','" + TextBox6.Text + " ',' " + TextBox7.Text + " ','" + xingbie + "','" + 0 + "')";
            Class1.ExecSql(sql);

            Class1.AlertShow("提交成功", "Default.aspx");
        }
        else
        {
           
            Class1.AlertShow("对不起，用户名不可用！");
        }
       
    }
    protected void report_Click(object sender, EventArgs e)
    {
        TextBox1.Text =" ";
        TextBox2.Text =" ";
        TextBox3.Text =" ";
        TextBox4.Text =" ";
        TextBox5.Text =" ";
        TextBox6.Text =" ";
        TextBox7.Text =" ";
        boy.Checked = true;
        girl.Checked = false;
    }
    protected void jiance_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "")
        {
            Class1.AlertShow("请填写用户姓名！");

        }
        string sql = "select count(*) from tbluser where userName='"+TextBox1.Text+"'";
        int i = int.Parse(Class1.SelOne(sql));
        if (i == 0)
        {
         
            Class1.AlertShow("恭喜您，用户名可用！");
        }
        else
        {
            Class1.AlertShow("对不起，用户名不可用！");
        }
    }

   
}
