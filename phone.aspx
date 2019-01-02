<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="phone.aspx.cs" Inherits="_Default" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table border="0" cellpadding="0" cellspacing="0" style="width: 778px; height: 172px">
            <tr>
                <td colspan="3" rowspan="1" style="height: 27px; text-align: right; font-size: 10pt;">
                    &nbsp;<asp:Label ID="Label1" runat="server" Text="查找手机:" Width="80px"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>手机名称</asp:ListItem>
                        <asp:ListItem>型号</asp:ListItem>
                        <asp:ListItem>生产地址</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="查找" Width="77px" />
                    &nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="添加手机" Width="89px" /></td>
            </tr>
            <tr>
                <td colspan="3" rowspan="1" style="height: 10px">
                </td>
            </tr>
            <tr>
                <td rowspan="2" colspan="3" style="vertical-align: middle; text-align: center; height: 210px;">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                        OnPageIndexChanging="GridView1_PageIndexChanging1" OnRowDeleting="GridView1_RowDeleting1" PageSize="5" Width="100%" Height="183px" DataKeyNames="phoneID" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Font-Size="10pt">
                        <Columns>
                            <asp:TemplateField HeaderText="手机编号">
                                <ItemTemplate>
                                    <div style="text-align: center">
                                        <table border="0" cellpadding="0" cellspacing="0" style="width: 1px; height: 21px">
                                            <tr>
                                                <td style="width: 115px">
                                                    <asp:Label ID="Label7" runat="server" Height="19px" Text='<%# Eval("phoneID") %>'
                                                        Width="46px"></asp:Label></td>
                                            </tr>
                                        </table>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="类型编号">
                                <ItemTemplate>
                                    <div style="text-align: center">
                                        <table border="0" cellpadding="0" cellspacing="0" style="width: 49px; height: 11px">
                                            <tr>
                                                <td colspan="2" style="height: 21px; text-align: center; width: 194px;">
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("typeID") %>' Width="52px"></asp:Label></td>
                                            </tr>
                                        </table>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="手机名称">
                                <ItemTemplate>
                                    <div style="text-align: center">
                                        <table border="0" cellpadding="0" cellspacing="0" style="width: 1px; height: 3px">
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("phoneName") %>' Height="19px" Width="106px"></asp:Label></td>
                                            </tr>
                                        </table>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="手机类型">
                                <ItemTemplate>
                                    <div style="text-align: center">
                                        <table border="0" cellpadding="0" cellspacing="0" style="width: 1px; height: 8px">
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("phoneAuthor") %>' Height="25px" Width="132px"></asp:Label></td>
                                            </tr>
                                        </table>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="价格">
                                <ItemTemplate>
                                    <div style="text-align: center">
                                        <table border="0" cellpadding="0" cellspacing="0" style="width: 3px; height: 1px">
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("phonePrice") %>' Height="25px" Width="60px"></asp:Label></td>
                                            </tr>
                                        </table>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="生产地址">
                                <ItemTemplate>
                                    <div style="text-align: center">
                                        <table border="0" cellpadding="0" cellspacing="0" style="width: 157px; height: 25px">
                                            <tr>
                                                <td style="height: 19px">
                                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("publisher") %>'></asp:Label></td>
                                            </tr>
                                        </table>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <div style="text-align: center">
                                        <table border="0" cellpadding="0" cellspacing="0" style="width: 35px; height: 16px">
                                            <tr>
                                                <td>
                                                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "searchphone.aspx?bid="+Eval("phoneID") %>'
                                                        Width="46px">编辑</asp:HyperLink></td>
                                            </tr>
                                        </table>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ShowHeader="False">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete"
                                        Text="删除" CommandArgument='<%# Eval("phoneID") %>' OnClick="LinkButton2_Click"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    &nbsp;</td>
            </tr>
            <tr>
            </tr>
            <tr>
                <td colspan="3" rowspan="1" style="height: 2px">
                    &nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

