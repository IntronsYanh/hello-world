<%@ Page Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adminSpeaking.aspx.cs" Inherits="adminSpeaking" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table border="0" cellpadding="0" cellspacing="0" style="width: 757px; height: 152px">
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" DataKeyNames="postID"
                        Height="131px" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="5"
                        Width="100%" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="phoneID" HeaderText="手机编号" />
                            <asp:BoundField DataField="textname" HeaderText="标题" />
                            <asp:BoundField DataField="userName" HeaderText="用户名" />
                            <asp:BoundField DataField="text" HeaderText="内容" />
                            <asp:BoundField DataField="speaktime" HeaderText="评论时间" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:CheckBox ID="CheckBox1" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <PagerSettings FirstPageText="&amp;gt;&amp;gt;" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="删除" Width="61px" />
                    &nbsp; &nbsp; &nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

