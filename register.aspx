<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="register.aspx.cs" Inherits="_Default" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><style type="text/css">
<!--
body {
 background-image: url(image/bg6.gif)
 text-align:center;
}
-->
</style>
</head>
<body style="text-align: center" >
    <form id="form1" runat="server">

        <div class="control" style="text-align: center">
       
                <table border="0" cellpadding="0" cellspacing="0" style="width:778px; height: 200px; background-image: url(image/bg6.gif);">
                    <tr>
                        <td colspan="3" style="height: 2px; text-align: center; vertical-align: top;">
                          
                                <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                    <tr>
                                        <td align="center" colspan="2" style="vertical-align: top; text-align: left">
                                            <img src="image/Phonehead1.gif" /></td>
                                    </tr>
                                </table>
                            <asp:Menu ID="Menu2" runat="server" Orientation="Horizontal" Font-Size="11pt">
                                <Items>
                                    <asp:MenuItem NavigateUrl="~/Default.aspx" Text="商城首页 " Value="商城首页 "></asp:MenuItem>
                                </Items>
                            </asp:Menu>
                          
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" style="font-size: 10pt; width: 493px; text-align: center;">
                            <span style="font-size: 12pt; font-family: 宋体; "><strong>
                                <br />
                                &nbsp;欢迎注册本商城会员</strong></span></td>
                    </tr>
                    <tr style="font-size: 12pt">
                        <td style="width: 177px; text-align: right; font-size: 9pt; height: 12px;">
                            <span style="font-family: 宋体">
                        用户姓名：</span></td>
                        <td style="width: 109px; font-size: 9pt; text-align: left; height: 12px;">
                        <asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="148px"></asp:TextBox></td>
                        <td style="width: 177px; text-align: left; font-size: 9pt; height: 12px;">
                            &nbsp;<asp:Button ID="jiance" runat="server" OnClick="jiance_Click" Text="检测是否重复" Height="25px" ValidationGroup="1" Width="117px" Font-Size="10pt" />
                            <span style="color: #ff0000"></span><span class="pass-desc" style="color: #999999">可以是字、数字、字母或下划线</span></td>
                    </tr>
                    <tr style="font-size: 12pt">
                        <td style="width: 177px; text-align: right; font-size: 9pt; height: 25px;">
                            <span style="font-family: 宋体">
                        密 &nbsp; &nbsp;码：</span></td>
                        <td style="width: 109px; font-size: 9pt; text-align: left; height: 25px;">
                        <asp:TextBox ID="TextBox2" runat="server" Height="16px" TextMode="Password" Width="150px"></asp:TextBox></td>
                        <td style="width: 177px; text-align: left; font-size: 9pt; height: 25px;">
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="密码必须大于6位"
                            OnServerValidate="CustomValidator1_ServerValidate" ControlToValidate="TextBox2" Display="Dynamic" Width="127px" SetFocusOnError="True"></asp:CustomValidator><span
                                style="color: #999999">密码区大小写</span></td>
                    </tr>
                    <tr style="font-size: 12pt">
                        <td style="width: 177px; text-align: right; font-size: 9pt; height: 36px;">
                            <span style="font-family: 宋体">确认密码：</span></td>
                        <td style="width: 109px; font-size: 9pt; text-align: left; height: 36px;">
                        <asp:TextBox ID="TextBox3" runat="server" Height="21px" TextMode="Password" Width="150px"></asp:TextBox></td>
                        <td style="width: 177px; text-align: left; font-size: 9pt; height: 36px;">
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2"
                            ControlToValidate="TextBox3" ErrorMessage="两次输入密码不一致" Height="11px" Display="Dynamic" Width="273px"></asp:CompareValidator></td>
                    </tr>
                    <tr style="font-size: 12pt">
                        <td style="width: 177px; text-align: right; font-size: 9pt; height: 36px;">
                            <span style="font-family: 宋体">
                        真实姓名：</span></td>
                        <td style="width: 109px; font-size: 9pt; text-align: left; height: 36px;">
                        <asp:TextBox ID="TextBox4" runat="server" Height="23px" Width="150px"></asp:TextBox></td>
                        <td style="width: 177px; text-align: left; font-size: 9pt; height: 36px;">
                        </td>
                    </tr>
                    <tr style="font-size: 12pt">
                        <td style="width: 177px; text-align: right; font-size: 9pt; height: 36px;">
                            <span style="font-family: 宋体">
                        地&nbsp; &nbsp; 址:&nbsp;</span></td>
                        <td style="font-size: 9pt; width: 109px; text-align: left; height: 36px;">
                        <asp:TextBox ID="TextBox5" runat="server" Height="18px" Width="150px"></asp:TextBox></td>
                        <td style="font-size: 9pt; width: 177px; text-align: left; height: 36px;">
                        </td>
                    </tr>
                    <tr style="font-size: 12pt">
                        <td style="width: 177px; text-align: right; font-size: 9pt; height: 36px;">
                            <span style="font-family: 宋体">
                        电 &nbsp; &nbsp;话：</span></td>
                        <td style="width: 109px; font-size: 9pt; text-align: left; height: 36px;">
                        <asp:TextBox ID="TextBox6" runat="server" Height="19px" Width="150px"></asp:TextBox></td>
                        <td style="width: 177px; text-align: left; font-size: 9pt; height: 36px;">
                        &nbsp;</td>
                    </tr>
                    <tr style="font-size: 12pt">
                        <td style="width: 177px; text-align: right; font-size: 9pt; height: 36px;">
                            <span style="font-family: 宋体">
                        邮 &nbsp; &nbsp;编：</span></td>
                        <td style="width: 109px; font-size: 9pt; text-align: left;">
                        <asp:TextBox ID="TextBox7" runat="server" Height="20px" Width="150px"></asp:TextBox></td>
                        <td style="width: 177px; text-align: left; font-size: 9pt; height: 36px;">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox7"
                            ErrorMessage="邮编输入不正确" ValidationExpression="\d{6}" Display="Dynamic" Width="127px"></asp:RegularExpressionValidator>
                            </td>
                    </tr>
                    <tr style="font-size: 12pt">
                        <td style="width: 177px; text-align: right; font-size: 9pt; height: 36px;">
                            <span style="font-family: 宋体">
                        性 &nbsp; &nbsp;别：</span></td>
                        <td colspan="1" style="text-align: center; font-size: 9pt; width: 109px; height: 33px;">
                        <asp:RadioButton ID="boy" runat="server" Checked="True" GroupName="1" Text="男" />
                        <asp:RadioButton ID="girl" runat="server" GroupName="1" Text="女" /></td>
                        <td style="width: 177px; font-size: 9pt; text-align: center; height: 33px;">
                            &nbsp;</td>
                    </tr>
                </table>
            <table>
                <tr>
                    <td style="width: 100px">
                        <asp:Button ID="tijiao" runat="server" Height="25px" OnClick="tijiao_Click" Text="提交"
                            Width="121px" /></td>
                    <td style="width: 100px">
                            <asp:Button ID="report" runat="server"
                            Height="25px" OnClick="report_Click" Text="修改" Width="116px" /></td>
                </tr>
            </table>
          
       </div>
               <table border="0" cellpadding="0" cellspacing="0" width="778" style="text-align: center" >
                    <tr>
                        <td align="center" style="width: 100%; height: 19px">
                        </td>
                    </tr>
                </table>
         </form>
          

 
        
         
       
</body>
</html>
