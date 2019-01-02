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

public partial class speaking : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            userspeaking();
        }
    }
    public void userspeaking()
    { 
        
        string BID = Request["bid"].ToString();
        string name = "select  userName,textname,text,speaktime from pinglun where phoneID='" + BID + "'";
        GridView1.DataSource = Class1.ExecSel(name);
        GridView1.DataBind();
    
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["userlogin"] !=null)
        {
            if (TextBox2.Text == "")
            {
               // Response.Write("<script language='javascript'>alert('请输入标题!');</script>");
                Class1.AlertShow("请输入标题");
            }
            else
            {
                if (TextBox1.Text == "")
                {

                  // Response.Write("<script language='javascript'>alert('请输入内容!');</script>");
                    Class1.AlertShow("请输入内容");
                }
                else
                {
                    int id = int.Parse(Request["bid"].ToString());
                    string username = Session["userlogin"].ToString();
                    string post = "insert into pinglun(phoneID,userName,textname,text,speaktime) values(" + id + ",'" + username + "','" + TextBox2.Text + "','" + TextBox1.Text + "','" + System.DateTime.Now + "')";
                    Class1.ExecSql(post);
                    userspeaking();
                    TextBox1.Text = "";
                }
     
                Class1.AlertShow("提交成功!");
            }
        }
        else
        {

            int id = int.Parse(Request["bid"].ToString());

           Class1.AlertShow("请先登陆");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("userMain.aspx");
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        userspeaking();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
