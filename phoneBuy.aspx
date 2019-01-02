<%@ Page Language="C#" MasterPageFile="~/UserPage.master" AutoEventWireup="true" CodeFile="phoneBuy.aspx.cs" Inherits="phoneBuy" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table border="0" cellpadding="0" cellspacing="0" style="height: 200px" width="100%">
            <tr>
                <td style="width: 123px; text-align: center;">
                    姓 名:</td>
                <td style="text-align: left; width: 416px;">
                    <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 123px; height: 24px; text-align: center;">
                    e-mali:&nbsp;</td>
                <td style="text-align: left; width: 416px; height: 24px;">
                    <asp:TextBox ID="TextBox2" runat="server" Width="150px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 123px; text-align: center;">
                    地 址:</td>
                <td style="text-align: left; width: 416px;">
                    <asp:TextBox ID="TextBox3" runat="server" Width="150px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 123px; text-align: center;">
                    订购方式:</td>
                <td style="text-align: left; width: 416px;">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="152px">
                        <asp:ListItem>银行转账</asp:ListItem>
                        <asp:ListItem>邮局</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td style="width: 123px; height: 22px; text-align: center;">
                    送货方式:&nbsp;</td>
                <td style="text-align: left; width: 416px; height: 22px;">
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="150px">
                        <asp:ListItem>平邮</asp:ListItem>
                        <asp:ListItem>快递</asp:ListItem>
                    </asp:DropDownList>
                    </td>
            </tr>
            <tr>
                <td style="width: 123px; text-align: center;">
                    邮 编:</td>
                <td style="text-align: left; width: 416px;">
                    <asp:TextBox ID="TextBox4" runat="server" Width="150px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 123px; text-align: center;">
                    电 话:</td>
                <td style="text-align: left; width: 416px;">
                    <asp:TextBox ID="TextBox5" runat="server" Width="150px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 123px; height: 20px; text-align: center;">
                    邮购费用:</td>
                <td style="height: 20px; text-align: left; width: 416px;">
                    <asp:Label ID="Label1" runat="server" Width="150px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 123px; height: 19px; text-align: center;">
                    商品费用:</td>
                <td style="text-align: left; width: 416px; height: 19px;">
                    <asp:Label ID="Label2" runat="server" Width="150px"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 123px; text-align: center;">
                    合 计:</td>
                <td style="text-align: left; width: 416px;">
                    <asp:Label ID="Label3" runat="server" Width="150px"></asp:Label></td>
            </tr>
            <tr>
                <td colspan="2">
                </td>
            </tr>
            <tr>
                <td colspan="2" style="height: 9px">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确定" Width="59px" />
                    &nbsp; &nbsp; &nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="取消" Width="57px" /></td>
            </tr>
        </table>
    </div>
</asp:Content>

