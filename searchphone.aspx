<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="searchphone.aspx.cs" Inherits="searchphone" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 556px; height: 277px">
        <tr>
            <td style="width: 112px">
                手机名称:</td>
            <td style="width: 393px; text-align: left">
                <asp:Label ID="Label2" runat="server" Height="22px" Text="Label" Width="430px"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 112px">
               手机型号:</td>
            <td style="width: 393px; text-align: left">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 112px">
                单 &nbsp; &nbsp; &nbsp; 价:</td>
            <td style="width: 393px; text-align: left">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>元(RMB)</td>
        </tr>
        <tr>
            <td style="width: 112px">
                手机说明:</td>
            <td style="width: 393px; text-align: left">
                <asp:TextBox ID="TextBox3" runat="server" Height="65px" TextMode="MultiLine" Width="425px"></asp:TextBox></td>
        </tr>
        <tr>
            <td style="width: 112px">
               生产日期:</td>
            <td style="width: 393px; text-align: left">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>&nbsp; &nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="yyyy-mm-dd" Width="82px"></asp:Label>&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 112px; height: 20px">
               手机图片:</td>
            <td style="width: 393px; height: 20px; text-align: left">
                <asp:FileUpload ID="FileUpload1" runat="server" /></td>
        </tr>
        <tr>
            <td colspan="2" style="height: 19px; text-align: center">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="更改内容" Width="77px" />
                &nbsp; &nbsp;
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="更改图片" /></td>
        </tr>
    </table>
</asp:Content>

