<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table border="0" cellpadding="0" cellspacing="0" style="height: 302px" width="100%">
            <tr>
                <td style="vertical-align: middle; width: 821px; height: 36px; text-align: right">
                    <asp:Label ID="Label1" runat="server" Text="请输入名称:" Width="104px" ForeColor="Red"></asp:Label>&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Width="167px"></asp:TextBox>
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="查找" Width="65px" />
                </td>
                <td style="vertical-align: middle; height: 36px; text-align: justify; width: 64px;">
                </td>
            </tr>
            <tr>
                <td colspan="2" style="vertical-align: top; height: 6px; text-align: center">
                </td>
            </tr>
            <tr>
                <td style="vertical-align: top; height: 134px; text-align: center" colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" Height="100%" Width="100%" DataKeyNames="userID" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="5" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="userName" HeaderText="用户名" />
                            <asp:BoundField DataField="address" HeaderText="住址" />
                            <asp:BoundField DataField="sex" HeaderText="性别" />
                            <asp:BoundField DataField="postcode" HeaderText="邮编" />
                            <asp:BoundField DataField="trueName" HeaderText="真实姓名" />
                            <asp:BoundField DataField="telephone" HeaderText="电话" />
                            <asp:BoundField DataField="userType" HeaderText="用户类型" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    &nbsp;<asp:CheckBox ID="CheckBox1" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td style="vertical-align: middle; height: 42px; text-align: center" colspan="2">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="设置管理员" Width="81px" />
                    &nbsp; &nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="删除用户" Width="75px" OnClick="Button2_Click" />
                    &nbsp; &nbsp;&nbsp;<asp:Button ID="Button3" runat="server" OnClick="Button3_Click"
                        Text="取消管理员" Width="83px" /></td>
            </tr>
            <tr>
                <td style="height: 12px" colspan="2">
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

