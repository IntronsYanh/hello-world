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

public partial class admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            databind("select * from tbluser");
        }
    }
    public void databind(string sql)
    {
    
        GridView1.DataSource = Class1.ExecSel(sql);
        GridView1.DataBind();
    }
  //设置管理员
    protected void Button1_Click1(object sender, EventArgs e)
    {
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox cb = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");  //在当前搜寻当前控件
            if (cb.Checked)
            {
                int id = int.Parse(GridView1.DataKeys[i].Value.ToString());       //获取一个控件值
                string sqlstr = "update tbluser set userType=1 where userID=" +id+ "";
                Class1.ExecSql(sqlstr);

            }
            
        }
        databind("select * from tbluser");
    }
    //删除管理员
    protected void Button2_Click(object sender, EventArgs e)
    {
       
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox cb = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");   //在当前搜寻当前控件
            if (cb.Checked)
            {
                int id = int.Parse(GridView1.DataKeys[i].Value.ToString());   //获取一个控件值
                string sqlstr = "delete from tbluser where userID="+id+"";
                Class1.ExecSql(sqlstr);
            }
        }
        databind("select * from tbluser");
    }
    //更改管理员

    protected void Button3_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox cb = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");  //在当前搜寻当前控件
            if (cb.Checked)
            {
                int id = int.Parse(GridView1.DataKeys[i].Value.ToString());       //获取一个控件值
                string sqlstr = "update tbluser set userType=0 where userID=" + id + "";
                Class1.ExecSql(sqlstr);

            }

        }
        databind("select * from tbluser");
    }
    //查找某个指定的用户
    protected void Button4_Click(object sender, EventArgs e)
    {
        string findname;
        findname = "select * from tbluser where userName like '%"+TextBox1.Text+"%'";
        databind(findname);        
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        databind("select * from tbluser");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
