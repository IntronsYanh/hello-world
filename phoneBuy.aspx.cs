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

public partial class phoneBuy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "")
        {
            Response.Write("<script>alert('请全部填写!');</script>");
           //Class1.AlertShow("请全部填写!");
           
        }
        else
        {
            orderinfo order = new orderinfo();
            order = (orderinfo)Session["order"];
            string userName = Session["userlogin"].ToString();
            string sql_id = "select userID from tbluser where userName='" + userName + "'";
            int uid = int.Parse(Class1.SelOne(sql_id));
            DateTime orderTime = order.orderTime;
            decimal orderSumPrice = order.sumPrice;
            string orderInsert = String.Format("insert into tblorder(userID,orderTime,orderSum,payment,ship,buyerName,buyerEmail,buyerAddress,buyerCode,buyerTel,Payed )values(" + uid + ",'" + orderTime + "','" + orderSumPrice + "','" + DropDownList1.Text + "','" + DropDownList2.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','"+ 0 +"')");
            Class1.ExecSql(orderInsert);   //生成订单，写入tblorder表
            int orderID = int.Parse(Class1.SelOne("select max(orderID) from tblorder"));  //获取orderID
            //将orderItemInfo写入到tblorderBook 中
            orderItemInfo orderItem = new orderItemInfo();
            Label1.Text = order.sumPrice.ToString();
            int shipPrice = 0;
            if (DropDownList2.Text == "平邮")
            {
                shipPrice = 6;
                Label2.Text = shipPrice.ToString();
                Label3.Text = Convert.ToString(order.sumPrice + shipPrice);
            }
            else
            {
                shipPrice = 20;
                Label2.Text = shipPrice.ToString();
                Label3.Text = Convert.ToString(order.sumPrice + shipPrice);
            }
            for (int i = 0; i < order.orderItemList.Count; i++)
            {
                orderItem = (orderItemInfo)order.orderItemList[i];
                int phoneID = orderItem.phoneID;
                int phoneSum = orderItem.phoneNum;
                decimal paySum = orderItem.price;
                decimal price = paySum / phoneSum;
                string orderIsert = String.Format("insert into tblorderPhone values(" + orderID + "," + phoneID + "," + phoneSum + "," + price + "," + paySum + ")");
                Class1.ExecSql(orderIsert);
            }
          
           Session["order"] = null;
           Response.Write("<script>alert('提交成功!');</script>");
           Response.Redirect("userMain.aspx");
        }
 

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("userMain.aspx");
    }
}
