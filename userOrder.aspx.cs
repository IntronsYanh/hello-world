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

public partial class userOrder : System.Web.UI.Page
{
    private void showShop()
    {
        if (Session["order"] != null)
        {
            Panel1.Visible = true;
            Label5.Visible = false;
           orderinfo order = (orderinfo)Session["order"];
            GridView1.DataSource = order.orderItemList;
            GridView1.DataBind();
           Label2.Text = order.TotalNum.ToString() ;
            Label4.Text =order.sumPrice.ToString() ;
        }
        else
        {
            Panel1.Visible = false;
            Label5.Visible = true;
            
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack )
        showShop(); 
    }
   
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        orderinfo order = (orderinfo)Session["order"];
        order.orderItemList.RemoveAt(e.RowIndex);
          if (order.orderItemList.Count == 0)

            {
                order = null;
            }
            else
            {
                GridViewRow row = GridView1.Rows[e.RowIndex];
                Label num = row.FindControl("phonesum") as Label;//删除书籍的数量
                int n = int.Parse(num.Text);
                order.TotalNum -= n;
                Label price = row.FindControl("phoneprice") as Label;//删除书籍的价格
                decimal p=decimal.Parse(price.Text );
                if (order.sumPrice != 0)
                {
                    order.sumPrice -= p;
                }
                else
                {
                    Panel1.Visible = false;
                    Label5.Visible = true;
                }
                
            }
            try
            {
                if (order != null)
                {
                    Session["order"] = order;
                   
                }
             
                
            }
            catch (Exception)
            {
                
              
            }
         
        showShop();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("userMain.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("phoneBuy.aspx");
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        showShop();
    }
}
