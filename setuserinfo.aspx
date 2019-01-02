<%@ Page Language="C#" MasterPageFile="~/UserPage.master" AutoEventWireup="true" CodeFile="setuserinfo.aspx.cs" Inherits="setuserinfo" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 804px; height: 246px">
        <tr>
            <td colspan="4" rowspan="2" style="text-align: center">
                <strong><span style="font-size: 32pt; font-family: 宋体-方正超大字符集"></span></strong>
            </td>
        </tr>
        <tr>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 1251px; text-align: right; height: 34px;">
                <span style="font-family: 新宋体">用户姓名：</span></td>
            <td style="width: 79px; height: 34px;">
                <asp:Label ID="Label1" runat="server" Text="Label" Width="98px"></asp:Label></td>
            <td colspan="2" style="text-align: left; height: 34px;">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 1251px; height: 14px; text-align: right" rowspan="2">
                <span style="font-family: 新宋体">密 &nbsp; &nbsp;码：</span><span style="font-family: Times New Roman"></span></td>
            <td style="width: 79px; height: 14px" rowspan="2">
                <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="150px"></asp:TextBox></td>
            <td colspan="2" style="height: 14px; text-align: left" rowspan="2">
                <br />
                </td>
        </tr>
        <tr style="font-size: 12pt; font-family: 新宋体">
        </tr>
        <tr style="font-size: 12pt; font-family: Times New Roman">
            <td style="width: 1251px; text-align: right; height: 39px;">
                <span>真实姓名：</span></td>
            <td style="width: 79px; height: 39px;">
                <asp:TextBox ID="TextBox4" runat="server" Height="20px" Width="150px"></asp:TextBox></td>
            <td colspan="2" style="text-align: left; height: 39px;">
                </td>
        </tr>
        <tr style="font-size: 12pt; font-family: Times New Roman">
            <td style="width: 1251px; height: 38px; text-align: right">
                <span style="font-family: 新宋体">地&nbsp; &nbsp; 址:&nbsp;</span></td>
            <td style="font-size: 12pt; width: 79px; height: 38px">
                <asp:TextBox ID="TextBox5" runat="server" Height="20px" Width="150px"></asp:TextBox></td>
            <td colspan="2" style="font-size: 12pt; height: 38px; text-align: left">
                </td>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 1251px; height: 24px; text-align: right">
                <span style="font-family: 新宋体">电 &nbsp; &nbsp;话：</span></td>
            <td style="width: 79px; height: 24px">
                <asp:TextBox ID="TextBox6" runat="server" Height="20px" Width="150px"></asp:TextBox></td>
            <td colspan="2" style="height: 24px; text-align: left">
                &nbsp;</td>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 1251px; text-align: right; height: 47px;">
                <span style="font-family: 新宋体">邮 &nbsp; &nbsp;编：</span></td>
            <td style="width: 79px; height: 47px;">
                <asp:TextBox ID="TextBox7" runat="server" Height="20px" Width="150px"></asp:TextBox></td>
            <td colspan="2" style="text-align: left; height: 47px;">
                &nbsp;<br />
                </td>
        </tr>
        <tr style="font-size: 12pt">
            <td style="width: 1251px; text-align: right; height: 35px;">
                <span style="font-family: 新宋体">性 &nbsp; &nbsp;别：</span></td>
            <td colspan="2" style="text-align: left; height: 35px;">
                &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            <td style="width: 1108px; height: 35px;">
            </td>
        </tr>
        <tr style="font-size: 12pt">
            <td colspan="4" style="text-align: center; height: 45px;">
                <asp:Button ID="tijiao" runat="server" Height="25px" OnClick="tijiao_Click" Text="提交"
                    Width="65px" />
                &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            </td>
        </tr>
    </table>
</asp:Content>

