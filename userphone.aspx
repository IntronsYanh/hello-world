<%@ Page Language="C#" MasterPageFile="~/UserPage.master" AutoEventWireup="true" CodeFile="userphone.aspx.cs" Inherits="userphone" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="text-align: center">
        <div style="text-align: center">
            <table border="0" cellpadding="0" cellspacing="0" style="width: 868px; height: 152px">
                <tr>
                    <td style="vertical-align: top; width: 140px; text-align: left">
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
                        <span>
                            <br />
                            <span style="font-size: 9pt; color: #000000">价格区间</span></span><span style="font-size: 9pt;
                                color: #092c6a"> </span>
                      <!--  <div class="border-body" style="text-align: left">
                            <table style="font-size: 9pt; color: #092c6a">
                                <tr>
                                    <td>
                                        <a href=""><span style="color: #000000">500元以下手机</span></a><span style="color: #092c6a">
                                        </span>
                                    </td>
                                </tr>
                                <tr style="color: #092c6a">
                                    <td>
                                        <a href=""><span style="color: #000000">500元—1000元手机</span></a><span style="color: #092c6a">
                                        </span>
                                    </td>
                                </tr>
                                <tr style="color: #092c6a">
                                    <td>
                                        <a href=""><span><span style="color: #000000">1000元—15</span>00元手<span style="color: #000000">机</span></span></a><span
                                            style="color: #092c6a"> </span>
                                    </td>
                                </tr>
                                <tr style="color: #092c6a">
                                    <td>
                                        <a href=""><span><span style="color: #000000">1500</span>元—2000<span style="color: #000000">元</span>手机</span></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href=""><span>2000元以<span style="color: #000000">上</span>手机</span></a>
                                    </td>
                                </tr>
                            </table>
                          
                        </div> -->
                      
                    </td>
                    <td style="width: 538px" valign="top">
                        &nbsp;
                        <table>
                            <tr>
                                <td style="width: 100px" valign="top">
                                    <asp:GridView ID="GridView" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                        DataKeyNames="phoneID" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand"
                                        PageSize="3" Width="535px">
                                        <Columns>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <div style="text-align: left">
                                                        <table border="0" cellpadding="0" cellspacing="0" style="width: 483px; height: 101px">
                                                            <tr>
                                                                <td rowspan="4" style="width: 70px; text-align: center">
                                                                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# "~/picture/"+Eval("phoneImage") %>'
                                                                        Style="width: 80px; height: 100px" />&nbsp;</td>
                                                                <td style="width: 2px; height: 21px">
                                                                </td>
                                                                <td colspan="2" style="height: 21px">
                                                                    手机名称:
                                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("phoneName") %>' ></asp:Label></td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 2px; height: 20px">
                                                                </td>
                                                                <td colspan="2" style="height: 20px">
                                                                    型号:
                                                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("phoneAuthor") %>' ></asp:Label></td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 2px; height: 24px">
                                                                </td>
                                                                <td colspan="2" style="height: 24px">
                                                                    价格:
                                                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("phonePrice") %>'></asp:Label></td>
                                                            </tr>
                                                            <tr>
                                                                <td style="width: 2px">
                                                                </td>
                                                                <td colspan="2">
                                                                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "phonenfo.aspx?bid="+Eval("phoneID").ToString() %>'
                                                                        Width="49px">详情</asp:HyperLink>&nbsp; &nbsp;<asp:HyperLink ID="HyperLink1" runat="server"
                                                                            NavigateUrl='<%# "speaking.aspx?bid="+Eval("phoneID").ToString() %>' Width="51px">评论</asp:HyperLink>&nbsp;
                                                                    &nbsp;&nbsp;
                                                                    <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("phoneID") %>'
                                                                        CommandName="add" Height="21px" ImageUrl="~/image/btn_buy.gif" Width="92px" /></td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                    <asp:Label ID="Label8" runat="server" ForeColor="Red" Text="请选择子节点."
                                        Visible="False" Width="378px"></asp:Label></td>
                                <td style="width: 100px">
                                </td>
                            </tr>
                        </table>
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
    </div>
</asp:Content>

