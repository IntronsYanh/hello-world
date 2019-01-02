<%@ Page Language="C#" MasterPageFile="~/UserPage.master" AutoEventWireup="true" CodeFile="userMain.aspx.cs" Inherits="userMain" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 925px; height: 238px ;font-size:10pt;">
        <tr>
            <td style="vertical-align: top; width: 151px; height: 383px; text-align: left">
                &nbsp;
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
                <!-- <a href=""><strong><span style="font-size: 9pt">价格区间</span></strong></a>
                <div class="border-body">
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
                                <a href=""><span style="font-size: 9pt">1000元—1500元手机</span></a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a href=""><span style="font-size: 9pt">1500元—2000元手机</span></a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a href=""><span style="font-size: 9pt">2000元以上手机</span></a>
                            </td>
                        </tr>
                    </table>
                    <br />
                </div> -->
                <table>
                    </tr>
                </table>
              
            </td>
            <td colspan="2" style="vertical-align: top; width: 700px; height: 383px;
                text-align: left; font-size: 10pt;">
                <table>
                    <tr>
                        <td style="width: 100px; height: 1000px;" valign="top">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    DataKeyNames="phoneID" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand" Width="500" Font-Size="10pt">
                    <PagerSettings Mode="NumericFirstLast" />
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <div style="text-align: left">
                                    <table border="0" cellpadding="0" cellspacing="0" style="width: 527px; height: 86px">
                                        <tr>
                                            <td rowspan="4" style="width: 49px; text-align: center">
                                                <asp:Image ID="Image2" runat="server"  style="width: 80px ;height:100px" ImageUrl='<%# "~/picture/"+Eval("phoneImage") %>' /></td>
                                            <td style="width: 73px; height: 21px; text-align: center;" align="center">
                                            手机名称:</td>
                                            <td colspan="2" style="height: 21px">
                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("phoneName") %>' Width="231px"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 73px; height: 20px; text-align: center;" align="left">
                                            型号:</td>
                                            <td colspan="2" style="height: 20px">
                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("phoneAuthor") %>' Width="230px"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 73px; height: 24px; text-align: center;" align="center">
                                            价格:</td>
                                            <td colspan="2" style="height: 24px">
                                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("phonePrice") %>' Width="234px"></asp:Label></td>
                                        </tr>
                                        <tr>
                                            <td style="width: 73px; height: 31px; text-align: center;" align="center">
                                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "phoneinfo.aspx?bid="+Eval("phoneID").ToString() %>'
                                                    Width="49px">详情</asp:HyperLink></td>
                                            <td colspan="2" style="height: 31px; text-align: left;" valign="baseline">
                                                &nbsp;
                                                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl='<%# "speaking.aspx?bid="+Eval("phoneID").ToString() %>'
                                                    Width="44px" Height="19px">评论</asp:HyperLink>
                                                <asp:ImageButton ID="button1" runat="server"
                                                        CommandArgument='<%# Eval("phoneID") %>' CommandName="add" Height="24px" ImageUrl="~/image/btn_buy.gif" Width="98px" 
                                                       /></td>
                                        </tr>
                                    </table>
                                </div>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:Label ID="Label8" runat="server" ForeColor="Red" Text="请选择子节点."
                    Visible="False" Width="378px"></asp:Label>
                           
                        <td style="width: 100px; height: 1000px; text-align: center;" valign="top">
                            
                </table>
                &nbsp; &nbsp;&nbsp;&nbsp;
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
</asp:Content>

