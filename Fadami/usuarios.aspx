<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="usuarios.aspx.cs" Inherits="Fadami.usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="email" DataSourceID="SqlDataSourceUsuario" InsertItemPosition="LastItem" OnItemInserted="ListView1_ItemInserted">
    <AlternatingItemTemplate>
        <tr style="background-color:#FFF8DC;">
            <td>
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            </td>
            <td>
                <asp:Label ID="nome_Label" runat="server" Text='<%# Eval("nome_") %>' />
            </td>
            <td>
                <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
            </td>
            <td>
                <asp:Label ID="senhaLabel" runat="server" Text='<%# Eval("senha") %>' />
            </td>
        </tr>
    </AlternatingItemTemplate>
    <EditItemTemplate>
        <tr style="background-color:#008A8C;color: #FFFFFF;">
            <td>
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            </td>
            <td>
                <asp:TextBox ID="nome_TextBox" runat="server" Text='<%# Bind("nome_") %>' />
            </td>
            <td>
                <asp:Label ID="emailLabel1" runat="server" Text='<%# Eval("email") %>' />
            </td>
            <td>
                <asp:TextBox ID="senhaTextBox" runat="server" Text='<%# Bind("senha") %>' />
            </td>
        </tr>
    </EditItemTemplate>
    <EmptyDataTemplate>
        <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
            <tr>
                <td>No data was returned.</td>
            </tr>
        </table>
    </EmptyDataTemplate>
    <InsertItemTemplate>
        <tr style="">
            <td>
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            </td>
            <td>
                <asp:TextBox ID="nome_TextBox" runat="server" Text='<%# Bind("nome_") %>' />
            </td>
            <td>
                <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
            </td>
            <td>
                <asp:TextBox ID="senhaTextBox" runat="server" Text='<%# Bind("senha") %>' />
            </td>
        </tr>
    </InsertItemTemplate>
    <ItemTemplate>
        <tr style="background-color:#DCDCDC;color: #000000;">
            <td>
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            </td>
            <td>
                <asp:Label ID="nome_Label" runat="server" Text='<%# Eval("nome_") %>' />
            </td>
            <td>
                <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
            </td>
            <td>
                <asp:Label ID="senhaLabel" runat="server" Text='<%# Eval("senha") %>' />
            </td>
        </tr>
    </ItemTemplate>
    <LayoutTemplate>
        <table runat="server">
            <tr runat="server">
                <td runat="server">
                    <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                        <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                            <th runat="server"></th>
                            <th runat="server">nome_</th>
                            <th runat="server">email</th>
                            <th runat="server">senha</th>
                        </tr>
                        <tr id="itemPlaceholder" runat="server">
                        </tr>
                    </table>
                </td>
            </tr>
            <tr runat="server">
                <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                    <asp:DataPager ID="DataPager1" runat="server">
                        <Fields>
                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                        </Fields>
                    </asp:DataPager>
                </td>
            </tr>
        </table>
    </LayoutTemplate>
    <SelectedItemTemplate>
        <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
            <td>
                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
            </td>
            <td>
                <asp:Label ID="nome_Label" runat="server" Text='<%# Eval("nome_") %>' />
            </td>
            <td>
                <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
            </td>
            <td>
                <asp:Label ID="senhaLabel" runat="server" Text='<%# Eval("senha") %>' />
            </td>
        </tr>
    </SelectedItemTemplate>
</asp:ListView>
&nbsp;<asp:SqlDataSource ID="SqlDataSourceUsuario" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [usuario] WHERE [email] = @email" InsertCommand="INSERT INTO [usuario] ([nome ], [email], [senha]) VALUES (@nome_, @email, @senha)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [nome ] AS nome_, [email], [senha] FROM [usuario]" UpdateCommand="UPDATE [usuario] SET [nome ] = @nome_, [senha] = @senha WHERE [email] = @email" OnInserted="SqlDataSourceUsuario_Inserted" OnSelecting="SqlDataSourceUsuario_Selecting" OnUpdated="SqlDataSourceUsuario_Updated">
    <DeleteParameters>
        <asp:Parameter Name="email" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="nome_" Type="String" />
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="senha" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="nome_" Type="String" />
        <asp:Parameter Name="senha" Type="String" />
        <asp:Parameter Name="email" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:Label ID="lMsg" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="Red"></asp:Label>
<br />
</asp:Content>
