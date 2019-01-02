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

public partial class userphone : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void twtype_SelectedNodeChanged(object sender, EventArgs e)
    {
        string typeid = twtype.SelectedValue;
        SqlDataSource1.SelectCommand = string.Format("select * from tblPhone where typeID='" + typeid + "'");
        GridView.DataBind();
        if (GridView.Rows.Count == 0)
            Label8.Visible = true;
        else
            Label8.Visible = false;
    }
    private orderItemInfo getOdrerItem(object sender, GridViewCommandEventArgs e)
    {
        orderItemInfo item = new orderItemInfo();
        ImageButton bt = e.CommandSource as ImageButton;//被单击的按钮
        GridViewRow row = bt.Parent.Parent as GridViewRow;//被选定的行
        item.phoneID = int.Parse(bt.CommandArgument);//手机号
        Label book = (Label)row.FindControl("label1");//手机名
        item.phoneName = book.Text;
        item.phoneNum = 1;//数量
        Label p = (Label)row.FindControl("label3");  //价格 
        item.price = Convert.ToDecimal(p.Text.Trim());
        return item;
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (Session["userlogin"] != null)
        {
            //添加购物车
            if (e.CommandName.ToLower() == "add")
            {
                orderinfo order = null;   //存储购物手机信息
                orderItemInfo orderItem = null; // 购买手机的信息
                //判断购物车中是否有书籍
                if (Session["order"] == null)
                {
                    orderItem = getOdrerItem(sender, e);//获取购买的手机
                    if (orderItem == null)
                    {

                        Class1.AlertShow("您还没有购买任何手机");
                        return;
                    }
                    //创建购物车
                    order = new orderinfo();
                    order.orderItemList.Add(orderItem);  //添加新书到列表
                    order.orderTime = DateTime.Now;    //购买时间
                    order.sumPrice = orderItem.price; //总价格
                    order.TotalNum = orderItem.phoneNum; //总数量
                    Session["order"] = order;//记录订单

                }
                else   //购物车中有书籍
                {
                    order = (orderinfo)Session["order"]; //将Session存入到order
                    orderItem = getOdrerItem(sender, e);
                    int i = 0;
                    //判断购物车中是否已经有了此手机
                    for (i = 0; i < order.orderItemList.Count; i++)
                    {
                        //如果有此手机，在此基础上加
                        if (orderItem.phoneID == ((orderItemInfo)order.orderItemList[i]).phoneID)
                        {
                            ((orderItemInfo)order.orderItemList[i]).phoneNum++;  //手机数量加1
                            ((orderItemInfo)order.orderItemList[i]).price += orderItem.price;
                            break;

                        }
                    }
                    if (i == order.orderItemList.Count)//购物车中没有此书,就将此手机加到购物车
                    {
                        order.orderItemList.Add(orderItem);
                    }
                    order.orderTime = DateTime.Now;  //购买时间
                    order.TotalNum++;  //总数量加1
                    order.sumPrice += orderItem.price; //总价格加1
                    Session["order"] = order;
                }

               
                Class1.AlertShow("添加成功！");
            }
        }
    }
}
