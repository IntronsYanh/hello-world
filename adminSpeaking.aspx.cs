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

public partial class adminSpeaking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            speaking();//5~1-a-s-p-x
        }
    }
    public void speaking()
    {
        string speak = "select * from pinglun ";
        GridView1.DataSource = Class1.ExecSel(speak);
        GridView1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox cb = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");  //在当前搜寻当前控件
            if (cb.Checked)
            {
                int id = int.Parse(GridView1.DataKeys[i].Value.ToString());       //获取一个控件值
                string sqlstr = "delete from pinglun where postID="+ id + "";
                Class1.ExecSql(sqlstr);

            }

        }
        speaking();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;//5^1^a^s^p^x
        speaking();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}   
