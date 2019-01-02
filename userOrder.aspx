<%@ Page Language="C#" MasterPageFile="~/userPage.master" AutoEventWireup="true" CodeFile="userOrder.aspx.cs" Inherits="userOrder" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table border="0" cellpadding="0" cellspacing="0" 
                style="width: 737px; height: 56px" __designer:mapid="912">
                <tr __designer:mapid="913">
                    <td style="height: 25px" __designer:mapid="914">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="124px" 
                            Width="737px" OnRowDeleting="GridView1_RowDeleting" AllowPaging="True" 
                            OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="5">
        <Columns>
            <asp:TemplateField HeaderText="编号">
                <ItemTemplate>
                    <asp:Label ID="lblBookID" runat="server" 
                        Text="<%# ((orderItemInfo)Container.DataItem).phoneID %>"></asp:Label>
                </ItemTemplate>
                <ItemStyle Width="40px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="手机名称">
                <ItemStyle Width="400px" />
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "phoneinfo.aspx?bid="+((orderItemInfo)Container.DataItem).phoneID %>'
                        Text="<%# ((orderItemInfo)Container.DataItem).phoneName %>"></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="价格">
                <ItemStyle Width="80px" />
                <ItemTemplate>
                    <asp:Label ID="phoneprice" runat="server" 
                        Text="<%# ((orderItemInfo)Container.DataItem).price %>"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="数量">
                <ItemStyle Width="80px" />
                <ItemTemplate>
                    <asp:Label ID="phonesum" runat="server" 
                        Text="<%# ((orderItemInfo)Container.DataItem).phoneNum %>"></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <ItemStyle Width="60px" />
                <ItemTemplate>
                    <asp:LinkButton ID="btnDel" runat="server" CausesValidation="False" CommandName="Delete"
                         OnClientClick="confirm('真要删除吗？') ;" Text="删除"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
                    </td>
                </tr>
            <tr __designer:mapid="92b">
                <td style="height: 25px" __designer:mapid="92c">
                    &nbsp;<asp:Label ID="Label1" runat="server" Text="总数量:"></asp:Label>
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                    &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="总价格:"></asp:Label>
                    <asp:Label ID="Label4" runat="server" Width="62px"></asp:Label></td>
            </tr>
            <tr __designer:mapid="931">
                <td style="height: 27px" __designer:mapid="932">
                    <asp:Button ID="Button1" runat="server" Text="继续购买" OnClick="Button1_Click" />
                    &nbsp; &nbsp; &nbsp; &nbsp;
                    <asp:Button ID="Button2" runat="server" Text="结算" OnClick="Button2_Click" /></td>
            </tr>
        </table>
        <br />
        &nbsp;<asp:Panel ID="Panel1" runat="server" Height="50px" Width="125px">
            &nbsp;</asp:Panel>
    </div>
    <asp:Label ID="Label5" runat="server" ForeColor="Red" Text="您还没有购买任何手机!" Width="404px"></asp:Label>
</asp:Content>

