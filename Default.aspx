<%@ Page Language="C#" MasterPageFile="~/Pphone.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <table style="width: 109%; height: 238px">
            <tr>
                <td colspan="3" style="vertical-align: top; height: 17px; text-align: center">
                    <div style="text-align: center">
                        <table border="0" cellpadding="0" cellspacing="0" width="100%">
                            <tr>
                                <td align="center" style="width: 22%; height: 22px; text-align: left">
                                    <asp:Label ID="Label4" runat="server" Height="18px" Text="用户名：" Width="71px"></asp:Label>
                                    <asp:TextBox ID="tbuser" runat="server" Width="93px"></asp:TextBox></td>
                                <td align="center" style="width: 23%; height: 22px; text-align: left">
                                    <asp:Label ID="Label5" runat="server" Text="密码:" Width="57px"></asp:Label><strong><span
                                        style="font-size: 9pt; color: #092c6a"> </span></strong>
                                    <asp:TextBox ID="tbpwd" runat="server" TextMode="Password" Width="113px"></asp:TextBox></td>
                                <td align="center" style="font-weight: bold; font-size: 9pt; width: 29%; color: #092c6a;
                                    height: 22px; text-align: left">
                                    <asp:Label ID="Label6" runat="server" Text="验证码:" Font-Bold="False" ForeColor="#000000"></asp:Label><span style="color: #092c6a">&nbsp;
                                    </span>
                                    <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="81px"></asp:TextBox>&nbsp;
                                    <img src="CheckCode.aspx" style="width: 39px; height: 21px" /></td>
                                <td align="center" style="width: 100%; height: 22px; text-align: left">
                                    <asp:Button ID="denglutm" runat="server" OnClick="denglutm_Click" Text="登陆" Width="49px" /><asp:HyperLink
                                        ID="HyperLink1" runat="server" Height="20px" NavigateUrl="~/register.aspx" Width="58px">注册</asp:HyperLink></td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
            <tr>
                <td style="vertical-align: top; width: 138px; height: 391px; text-align: left">
                    <br />
                    <asp:TreeView ID="twtype" runat="server" OnSelectedNodeChanged="twtype_SelectedNodeChanged"
                        Style="vertical-align: top; width: 50px; text-align: left">
                        <Nodes>
                            <asp:TreeNode Text="手机类型" Value="1">
                                <asp:TreeNode Text="华为手机" Value="2">
                                    <asp:TreeNode Text="荣耀系列" Value="3"></asp:TreeNode>
                                    <asp:TreeNode Text="P系列" Value="4"></asp:TreeNode>
                                    <asp:TreeNode Text="nova系列" Value="5"></asp:TreeNode>
                                    <asp:TreeNode Text="Mate系列" Value="6"></asp:TreeNode>
                                    <asp:TreeNode Text="Note系列" Value="7"></asp:TreeNode>
                                </asp:TreeNode>
                            </asp:TreeNode>
                        </Nodes>
                    </asp:TreeView>
                    &nbsp;<br />
                    <!--<a href=""><span style="font-size: 9pt">价格区间</span></a>
                    <div class="border-body" style="text-align: left">
                        <table>
                            <tr>
                                <td>
                                    <a href=""><span style="font-size: 9pt">500元以下手机</span></a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href=""><span style="font-size: 9pt">500元—1000元手机</span></a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href=""><span style="font-size: 9pt">1000元—150<span style="color: #000000">0</span>元手机</span></a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href=""><span style="font-size: 9pt">1500元<span style="color: #000000">—</span>2000<span
                                        style="color: #000000">元</span>手机</span></a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href=""><span style="font-size: 9pt">2000元以<span style="color: #000000">上</span>手机</span></a>
                                </td>
                            </tr>
                        </table>
                        <br />
                    </div> -->
           
                <td colspan="2" style="vertical-align: top; width: 1051px; height: 391px;
                    text-align: left" valign="top">
                    <table style="width: 732px">
                        <tr>
                            <td style="width: 212px" valign="top">
                                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                    DataKeyNames="phoneID" DataSourceID="SqlDataSource1" PageSize="8" 
                                    Width="100%" onselectedindexchanged="GridView1_SelectedIndexChanged">
                                    <Columns>
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <table border="0" cellpadding="0" cellspacing="0" style="width: 526px; height: 86px">
                                                    <tr>
                                                        <td rowspan="4" style="width: 44px; text-align: left">
                                                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# "~/picture/"+Eval("phoneImage") %>'
                                                                Style="width: 80px; height: 100px" /></td>
                                                        <td style="width: 74px; height: 21px; text-align: center;">
                                                            手机名称:</td>
                                                        <td colspan="2" style="height: 21px; text-align: left; width: 199px;">
                                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("phoneName") %>' Width="200px"></asp:Label></td>
                                                        <td colspan="1" style="height: 21px; text-align: left">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 74px; height: 20px; text-align: center;">
                                                            类型:</td>
                                                        <td colspan="2" style="height: 20px; text-align: left; width: 199px;">
                                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("phoneAuthor") %>' Width="186px"></asp:Label></td>
                                                        <td colspan="1" style="height: 20px; text-align: left">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 74px; height: 24px; text-align: center;">
                                                            价格:</td>
                                                        <td colspan="2" style="height: 24px; text-align: left; width: 199px;">
                                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("phonePrice") %>' Width="185px"></asp:Label></td>
                                                        <td colspan="1" style="height: 24px; text-align: left">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="width: 74px; height: 40px; text-align: center;">
                                                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "phoneinfo.aspx?bid="+Eval("phoneID").ToString() %>'
                                                                Width="49px">详情</asp:HyperLink></td>
                                                        <td colspan="2" style="text-align: left; width: 199px; height: 40px;" valign="top">
                                                            &nbsp;<asp:HyperLink ID="HyperLink3" runat="server" Height="15px" NavigateUrl='<%# "speaking.aspx?bid="+Eval("phoneID").ToString() %>'
                                                                Width="38px">评论</asp:HyperLink><asp:ImageButton ID="ImageButton1" runat="server"
                                                                    Height="25px" ImageUrl="~/image/btn_buy.gif" OnClientClick="alert('请先登陆!')" /></td>
                                                        <td style="wi; height: 40px;">
                                                        </td>
                                                    </tr>
                                                </table>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>
                                <asp:Label ID="Label8" runat="server" ForeColor="Red" Text="清选择子节点."
                                    Visible="False" Width="378px"></asp:Label><br />
                                </td>
                            <td style="width: 100px; text-align: center" valign="top">
                                <br />
                              
          
                        </tr>
                    </table>
                    <br />
                    &nbsp;&nbsp;<br />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues"
                        ConnectionString="<%$ ConnectionStrings:NetPhoneConnectionString %>" DeleteCommand="DELETE FROM [tblPhone] WHERE [phoneID] = @original_phoneID AND [typeID] = @original_typeID AND [phoneName] = @original_phoneName AND [phoneAuthor] = @original_phoneAuthor AND [phonePrice] = @original_phonePrice AND [publisher] = @original_publisher AND [publishDate] = @original_publishDate AND [bookImage] = @original_bphoneImage AND [IsSelling] = @original_IsSelling"
                        InsertCommand="INSERT INTO [tblPhone] ([typeID], [phoneName], [phoneAuthor], [phonePrice], [publisher], [publishDate], [phoneImage], [IsSelling]) VALUES (@typeID, @phoneName, @phoneAuthor, @phonePrice, @publisher, @publishDate, @phoneImage, @IsSelling)"
                        OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblPhone]"
                        UpdateCommand="UPDATE [tblPhone] SET [typeID] = @typeID, [phoneName] = @phoneName, [phoneAuthor] = @bookAuthor, [phonePrice] = @phonePrice, [publisher] = @publisher, [publishDate] = @publishDate, [bookImage] = @phoneImage, [IsSelling] = @IsSelling WHERE [phoneID] = @original_phoneID AND [typeID] = @original_typeID AND [phoneName] = @original_phoneName AND [phoneAuthor] = @original_bookAuthor AND [bookPrice] = @original_phonePrice AND [publisher] = @original_publisher AND [publishDate] = @original_publishDate AND [phoneImage] = @original_phoneImage AND [IsSelling] = @original_IsSelling">
                        <DeleteParameters>
                            <asp:Parameter Name="original_phoneID" Type="Int32" />
                            <asp:Parameter Name="original_typeID" Type="Int32" />
                            <asp:Parameter Name="original_phoneName" Type="String" />
                            <asp:Parameter Name="original_phoneAuthor" Type="String" />
                            <asp:Parameter Name="original_phonePrice" Type="Decimal" />
                            <asp:Parameter Name="original_publisher" Type="String" />
                            <asp:Parameter Name="original_publishDate" Type="DateTime" />
                            <asp:Parameter Name="original_phoneImage" Type="String" />
                            <asp:Parameter Name="original_IsSelling" Type="Boolean" />
                        </DeleteParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="typeID" Type="Int32" />
                            <asp:Parameter Name="phoneName" Type="String" />
                            <asp:Parameter Name="phoneAuthor" Type="String" />
                            <asp:Parameter Name="phonePrice" Type="Decimal" />
                            <asp:Parameter Name="publisher" Type="String" />
                            <asp:Parameter Name="publishDate" Type="DateTime" />
                            <asp:Parameter Name="phoneImage" Type="String" />
                            <asp:Parameter Name="IsSelling" Type="Boolean" />
                            <asp:Parameter Name="original_phoneID" Type="Int32" />
                            <asp:Parameter Name="original_typeID" Type="Int32" />
                            <asp:Parameter Name="original_phoneName" Type="String" />
                            <asp:Parameter Name="original_phoneAuthor" Type="String" />
                            <asp:Parameter Name="original_phonePrice" Type="Decimal" />
                            <asp:Parameter Name="original_publisher" Type="String" />
                            <asp:Parameter Name="original_publishDate" Type="DateTime" />
                            <asp:Parameter Name="original_phoneImage" Type="String" />
                            <asp:Parameter Name="original_IsSelling" Type="Boolean" />
                        </UpdateParameters>
                        <InsertParameters>
                            <asp:Parameter Name="typeID" Type="Int32" />
                            <asp:Parameter Name="phoneName" Type="String" />
                            <asp:Parameter Name="phoneAuthor" Type="String" />
                            <asp:Parameter Name="phonePrice" Type="Decimal" />
                            <asp:Parameter Name="publisher" Type="String" />
                            <asp:Parameter Name="publishDate" Type="DateTime" />
                            <asp:Parameter Name="phoneImage" Type="String" />
                            <asp:Parameter Name="IsSelling" Type="Boolean" />
                        </InsertParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            </table>
    </div>
</asp:Content>

