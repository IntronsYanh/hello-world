<%@ Page Language="C#" MasterPageFile="~/phonePage.master" AutoEventWireup="true" CodeFile="speaking.aspx.cs" Inherits="speaking" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center" id="DIV1" runat="server">
        <table border="0" cellpadding="0" cellspacing="0" style="width: 719px; height: 142px">
            <tr>
                <td style="width: 710px; text-align: left">
                    <asp:Label ID="Label4" runat="server" Text="标题:" Width="42px"></asp:Label>
                    &nbsp; <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 710px; text-align: left">
                </td>
            </tr>
            <tr>
                <td style="height: 16px; text-align: left; width: 710px;">
                    <asp:TextBox ID="TextBox1" runat="server" Height="274px" Width="795px" TextMode="MultiLine" BackColor="White" BorderColor="White" ForeColor="Black"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="text-align: center; width: 710px;">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" PageSize="3"
                        Width="591px" OnPageIndexChanging="GridView1_PageIndexChanging" AllowPaging="True">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <table border="0" cellpadding="0" cellspacing="0" style="width: 780px; height: 65px;">
                                        <tr>
                                            <td style="width: 444px; height: 8px; text-align: left;">
                                                <asp:Label ID="Label3" runat="server" Text="评论者:" Width="55px"></asp:Label>&nbsp;
                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("userName") %>'></asp:Label></td>
                                            <td style="height: 8px; text-align: right; width: 339px;">
                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("speaktime") %>'></asp:Label></td>
                                                
                                        </tr>
                                        <tr>
                                            <td style="height: 15px; text-align: left;" colspan="2">
                                                &nbsp;<asp:Label ID="Label5" runat="server" Text="标题:"></asp:Label>
                                                &nbsp; &nbsp;
                                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("textname") %>' Width="86px"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" style="height: 3px; text-align: left;">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" rowspan="2" style="text-align: left"><%# Eval("text") %>
                                            </td>
                                        </tr>
                                        <tr>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click"
                        Text="提交" Width="59px" />
                    &nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click"
                        Text="取消" Width="55px" /></td>
            </tr>
        </table>
    </div>
</asp:Content>

