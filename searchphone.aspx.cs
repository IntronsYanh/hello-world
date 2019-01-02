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

public partial class searchphone : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            string BID = Request["bid"].ToString();
            string sql = "select * from tblPhone where phoneID=" + BID;
            DataTable dt = Class1.ExecSel(sql);
            Label2.Text = dt.Rows[0][2].ToString();
            TextBox1.Text = dt.Rows[0][3].ToString();
            TextBox2.Text = dt.Rows[0][4].ToString();
            TextBox3.Text = dt.Rows[0][5].ToString();
            TextBox4.Text = dt.Rows[0][6].ToString();
        }
      

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
      
        string BID = Request["bid"].ToString();
        if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "")
        {

            string sqlupdate = "update tblPhone set phoneAuthor='" + TextBox1.Text + "',phonePrice='" + TextBox2.Text + "',publisher='" + TextBox3.Text + "',publishDate='" + TextBox4.Text + "' where phoneID=" + BID + "";
            Class1.ExecSql(sqlupdate);
            Response.Redirect("phone.aspx");
        }
     }


    protected void Button2_Click(object sender, EventArgs e)
    {
        string filename;
        string BID = Request["bid"].ToString();
        if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "")
        {
            filename = FileUpload1.FileName.ToString();
            string filepath = Server.MapPath("picture");
            FileUpload1.SaveAs(filepath + "\\" + filename);
            string sqlupdate = "update tblPhone set phoneImage='" + filename + "' where phoneID=" + BID + "";
            Class1.ExecSql(sqlupdate);
            Response.Redirect("phone.aspx");
         }
    }
}
