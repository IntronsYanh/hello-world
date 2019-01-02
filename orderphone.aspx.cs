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
using System.Drawing;

public partial class orderphone : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            databind();
        }

    }
    public void databind()
    {
        string orderbook = "select * from tblorder";
        GridView1.DataSource = Class1.ExecSel(orderbook);
        GridView1.DataBind();

    }
    //提交收到用户寄到的钱
    protected void Button1_Click(object sender, EventArgs e)
    {
            string sqlstr = "update tblorder set Payed=1 where orderID=" + TextBox2.Text + "";
            Class1.ExecSql(sqlstr);
                 databind();
       
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        databind();
    }
    //查找
    protected void Button3_Click(object sender, EventArgs e)
    {
        string useroder1 = "";
          string   userorder2;
          if (TextBox1.Text != "")
          {
              if (DropDownList1.SelectedValue == "名称")
              {
                  useroder1 = "select * from tblorder where buyerName like '" + TextBox1.Text + "%'";
                  GridView1.DataSource = Class1.ExecSel(useroder1);
                  GridView1.DataBind();
              }
              if (DropDownList1.SelectedValue == "时间")
              {
                  userorder2 = "select *  from tblorder where orderTime like'" + TextBox1.Text + "%'";
                  GridView1.DataSource = Class1.ExecSel(userorder2);
                  GridView1.DataBind();
              }
          }
          else
          {
              
              Class1.AlertShow("内容不能为空!");
          }
        

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string px = "select orderID ,orderTime,orderSum,payment,ship,buyerName,buyerEmail,buyerAddress,buyerCode,buyerTel,Payed from tblorder order by orderTime desc ";
        GridView1.DataSource = Class1.ExecSel(px);
        GridView1.DataBind();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        string px = "select orderID,orderTime,orderSum,payment,ship,buyerName,buyerEmail,buyerAddress,buyerCode,buyerTel,Payed from tblorder order by orderTime asc ";
        GridView1.DataSource = Class1.ExecSel(px);
        GridView1.DataBind();
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            int count = Convert.ToInt32(DataBinder.Eval(e.Row.DataItem, "Payed"));
            if (count == 1)
                e.Row.BackColor = Color.Blue ;
        }
    }
}

