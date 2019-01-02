<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="orderphone.aspx.cs" Inherits="orderphone" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center; vertical-align: top;">
        &nbsp;</div>
    <div style="text-align: center">
        <table border="0" cellpadding="0" cellspacing="0" style="height: 161px" width="100%">
            <tr>
                <td style="width: 523px; height: 36px; text-align: right">
                    <asp:Label ID="Label1" runat="server" Text="查找内容" Width="65px"></asp:Label></td>
                <td style="height: 36px; text-align: right">
                    <asp:TextBox ID="TextBox1" runat="server" Width="151px"></asp:TextBox></td>
                <td style="width: 36px; height: 36px; text-align: left">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="128px">
                        <asp:ListItem>名称</asp:ListItem>
                        <asp:ListItem>时间</asp:ListItem>
                    </asp:DropDownList></td>
                <td style="width: 1px; height: 36px; text-align: left">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="查找" Width="71px" /></td>
            </tr>
            <tr>
                <td colspan="4" style="height: 19px">
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <asp:GridView ID="GridView1" runat="server" Height="212px" Width="100%" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="5" AutoGenerateColumns="False" OnRowDataBound="GridView1_RowDataBound">
                        <Columns>
                            <asp:TemplateField HeaderText="编号">
                                <ItemTemplate>
                                    <asp:Label ID="Label12" runat="server" Text='<%# Eval("orderID") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="购买时间">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("orderTime") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="总价格">
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("orderSum") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="付账方式">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("payment") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="付账类型">
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("ship") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="姓名">
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("buyerName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="买家Email">
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("buyerEmail") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="买家地址">
                                <ItemTemplate>
                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("buyerAddress") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="买家邮编">
                                <ItemTemplate>
                                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("buyerCode") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="买家电话">
                                <ItemTemplate>
                                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("buyerTel") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td colspan="4" style="height: 19px">
                </td>
            </tr>
            <tr>
                <td colspan="2" style="height: 36px; text-align: right">
                    <asp:Label ID="Label11" runat="server" Text="输入编号:" Width="86px"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" Width="127px"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="提交" Width="85px" OnClick="Button1_Click" /></td>
                <td colspan="2" style="height: 36px; text-align: left">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="降序" Width="81px" />
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="升序" Width="77px" /></td>
            </tr>
        </table>
    </div>
</asp:Content>

