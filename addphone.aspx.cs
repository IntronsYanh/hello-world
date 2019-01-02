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

public partial class addphone : System.Web.UI.Page
{
    string filename;
    int typeID;
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            typeID = Convert.ToInt32(DropDownList1.SelectedItem.Value);
        }
        catch (Exception)
        {

            typeID = 5;
        }
        if (TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "")
        {
            string sql = "select count(*) from tblPhone where phoneName='" + TextBox1.Text.Trim().ToString() + "'";
            int sqlcount = int.Parse(Class1.SelOne(sql));
            if (sqlcount == 0)
            {
                filename = FileUpload1.FileName.ToString();
                string filepath = Server.MapPath("picture");
                FileUpload1.SaveAs(filepath + "\\" + filename);
                string sqlisert = "insert into tblPhone(typeID,phoneName,phoneAuthor,phonePrice,publisher,publishDate,phoneImage,IsSelling) values(" + typeID + ",'" + TextBox1.Text.Trim().ToString() + "','" + TextBox2.Text.Trim().ToString() + "'," + TextBox3.Text.Trim().ToString() + ", '" + TextBox4.Text.Trim().ToString() + "','" + TextBox5.Text.Trim().ToString() + "','" + filename + "',0)";
                Class1.ExecSql(sqlisert);
            }
            else
            {
               // Response.Write("<scrip javalaguage='javascript'>alert('此手机已经存在!');</script>");
                Class1.AlertShow("此手机已经存在!");
            }
        }
        else
        {
           // Response.Write("<scrip javalaguage='javascript'>alert('请填写全部信息!');</script>");
            Class1.AlertShow("请填写全部信息!");
        }
        Response.Redirect("phone.aspx");

    }
}
