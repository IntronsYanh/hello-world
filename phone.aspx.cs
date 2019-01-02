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



public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            phoneinfo();
        }
    }
    public void phoneinfo()
    {
        string phone = "select * from tblPhone";
        GridView1.DataSource = Class1.ExecSel(phone);
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("addphone.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string phoneinfo = "";
        switch (DropDownList1.SelectedValue)
        { 
            case "手机名称":
                phoneinfo = "select * from tblPhone where phoneName like'%" + TextBox1.Text + "%'";
                break;
            case"手机类型":
                phoneinfo = "select * from tblPhone where phoneAuthor like'%" + TextBox1.Text + "%'";
                break;
            case"手机产地":
                phoneinfo = "select * from tblPhone where publisher like'%" + TextBox1.Text + "%'";
                break;
         }
         GridView1.DataSource = Class1.ExecSel(phoneinfo);
         GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging1(object sender, GridViewPageEventArgs e)
    {
         GridView1.PageIndex = e.NewPageIndex;
         phoneinfo();
    }

    //删除书籍
    protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
    {
        string sqldel = "delete from tblPhone where phoneID=" + GridView1.DataKeys[e.RowIndex].Value + "";
        Class1.ExecSql(sqldel);
        phoneinfo();
       
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {

    }
}
