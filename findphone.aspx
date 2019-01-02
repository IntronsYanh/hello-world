<%@ Page Language="C#"  MasterPageFile="~/UserPage.master" AutoEventWireup="true" CodeFile="findphone.aspx.cs" Inherits="findphone" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: left; background-color: #ffffff;">
        <table border="0" cellpadding="0" cellspacing="0" style="width:899px; height: 199px">
            <tr>
                <td rowspan="7" style="width: 48px; text-align: center;">
                    <asp:Image ID="Image1" runat="server" /></td>
            </tr>
            <tr>
                <td style=" text-align: center;">
                    手机名称:&nbsp;
                </td>
                <td style="text-align: left; width: 689px;">
                    <asp:Label ID="Label2" runat="server" ></asp:Label></td>
            </tr>
            <tr>
                <td style=" text-align: center;">
               类  型:</td>
                <td style="width: 689px; text-align: left">
                    <asp:Label ID="Label3" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td style=" text-align: center;">
                  价格:</td>
                <td style=" text-align: left; width: 689px;">
                    <asp:Label ID="Label4" runat="server" ></asp:Label></td>
            </tr>
            <tr>
                <td style="text-align: center;">
                    产品描述:</td>
                <td style="width: 689px; text-align: left">
                    <asp:Label ID="Label5" runat="server"></asp:Label></td>
            </tr>
            <tr>
                <td style=" text-align: center; height: 31px;">
                    生产日期:
                </td>
                <td style="width: 689px; text-align: left; height: 31px;">
                    <asp:Label ID="Label6" runat="server" ></asp:Label></td>
            </tr>
            <tr>
                <td style=" text-align: center;">
                    是否存货:
                </td>
                <td style="width: 689px; text-align: left">
                    <asp:Label ID="Label7" runat="server" Width="114px"></asp:Label></td>
            </tr>
        </table>
    </div>
    &nbsp;
    &nbsp;&nbsp;
    <br />
</asp:Content>

