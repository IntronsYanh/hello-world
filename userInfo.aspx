<%@ Page Language="C#" MasterPageFile="~/UserPage.master" AutoEventWireup="true" CodeFile="userInfo.aspx.cs" Inherits="userInfo" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table border="0" cellpadding="0" cellspacing="0" style="height: 350px" width="100%">
            <tr>
                <td style="width: 71px; text-align: left; height: 8px;">
                    <span style="font-family: 新宋体">姓 &nbsp;&nbsp; 名:</span></td>
                <td style="width: 202px; text-align: left; height: 8px;">
                    <asp:Label ID="Label1" runat="server" Height="16px" Text="Label" Width="150px"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 71px; text-align: center; height: 9px;">
                    真实姓名:</td>
                <td style="width: 202px; text-align: left; height: 9px;">
                    <asp:Label ID="Label2" runat="server" Text="Label" Width="150px"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 71px; text-align: center">
                    地 &nbsp; &nbsp; &nbsp; 址:</td>
                <td style="width: 202px; text-align: left">
                    <asp:Label ID="Label3" runat="server" Text="Label" Width="150px"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 71px; text-align: center">
                    电 &nbsp; &nbsp; &nbsp; 话:</td>
                <td style="width: 202px; text-align: left">
                    <asp:Label ID="Label4" runat="server" Text="Label" Width="150px"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 71px; text-align: center">
                    邮 &nbsp; &nbsp;&nbsp; 编:</td>
                <td style="width: 202px; text-align: left">
                    <asp:Label ID="Label5" runat="server" Text="Label" Width="150px"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 71px; text-align: center">
                    性 &nbsp; &nbsp; &nbsp; 别:</td>
                <td style="width: 202px; text-align: left">
                    <asp:Label ID="Label6" runat="server" Text="Label" Width="150px"></asp:Label></td>
            </tr>
            <tr>
                <td style="width: 71px; text-align: center; height: 4px;">
                    角 &nbsp; &nbsp; &nbsp; 色:</td>
                <td style="width: 202px; text-align: left; height: 4px;">
                    <asp:Label ID="Label7" runat="server" Text="Label" Width="150px"></asp:Label></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center">
                    <asp:Button ID="Button1" runat="server" Text="更改信息" OnClick="Button1_Click" />
                    &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

