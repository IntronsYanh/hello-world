<%@ Page Language="C#" MasterPageFile="~/Pphone.master" AutoEventWireup="true" CodeFile="phoneinfo.aspx.cs" Inherits="phoneinfo" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" style="height: 175px" width="100%">
        <tr>
            <td rowspan="7" style="width: 86px">
                <asp:Image ID="Image1" runat="server" /></td>
            <td style="width: 175px">
                类型编号:</td>
            <td style="text-align: left">
                <asp:Label ID="Label1" runat="server" Text="Label" Width="138px"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 175px">
                手机名称:</td>
            <td style="text-align: left">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 175px; height: 21px">
                型&nbsp; 号:</td>
            <td style="height: 21px; text-align: left">
                <asp:Label ID="Label3" runat="server" Text="Label" Width="136px"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 175px">
                价 &nbsp; 格:</td>
            <td style="text-align: left">
                <asp:Label ID="Label4" runat="server" Text="Label" Width="134px" Height="17px"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 175px">
                商品描述:</td>
            <td style="text-align: left">
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 175px">
                生产日期:</td>
            <td style="text-align: left">
                <asp:Label ID="Label6" runat="server" Text="Label" Width="126px"></asp:Label></td>
        </tr>
        <tr>
           <!-- <td style="width: 175px">
                是否交易:</td>
         <td style="text-align: left">
                <asp:CheckBox ID="CheckBox1" runat="server" Text="是" /></td> -->
        </tr>
        <tr>
            <td rowspan="1" style="width: 110px">
            </td>
             <td colspan="2" style="text-align: left">
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="返回" Width="53px" /></td>
        </tr>
    </table>
    <br />
</asp:Content>

