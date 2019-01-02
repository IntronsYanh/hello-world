<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="addphone.aspx.cs" Inherits="addphone" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <div style="text-align: center">
            <table border="0" cellpadding="0" cellspacing="0" style="height: 277px" width="100%">
                <tr>
                    <td style="width: 98px; text-align: left;">
                        类型编号:</td>
                    <td style="width: 393px; text-align: left">
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="51px">
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td style="width: 98px; text-align: left;">
                        手机名称:</td>
                    <td style="width: 393px; text-align: left">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 98px; text-align: left;">
                        手机类型:</td>
                    <td style="width: 393px; text-align: left">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 98px; text-align: left;">
                        单  价:</td>
                    <td style="width: 393px; text-align: left">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 98px; text-align: left;">
                        生产地址:</td>
                    <td style="width: 393px; text-align: left">
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 98px; text-align: left;">
                        生产日期:</td>
                    <td style="width: 393px; text-align: left">
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        &nbsp; &nbsp; &nbsp;&nbsp; 
                        <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="请输入如yyyy-mm-dd格式的日期！" Width="260px"></asp:Label>&nbsp;&nbsp;
                        &nbsp; &nbsp;&nbsp;
                    </td>
                </tr>
                <tr>
                    <td style="width: 98px; height: 20px; text-align: left;">
                        上传图片:</td>
                    <td style="width: 393px; height: 20px; text-align: left">
                        <asp:FileUpload ID="FileUpload1" runat="server" /></td>
                </tr>
                <tr>
                    <td colspan="2" style="height: 19px; text-align: center;">
                        <asp:Button ID="Button1" runat="server" Text="提交信息" Width="77px" OnClick="Button1_Click" /></td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>

