<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="user.aspx.cs" Inherits="user" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table border="0" cellpadding="0" cellspacing="0" style="width: 869px; height: 159px">
            <tr>
                <td style="vertical-align: middle; height: 109px; text-align: center; background-color: #ffffff;">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging"
                        PageSize="5" Width="667px">
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td style="height: 19px; background-color: #ffffff">
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

