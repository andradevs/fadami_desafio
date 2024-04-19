<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="Veiculos.aspx.cs" Inherits="Fadami.Veiculos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Larger" Text="Inserir Veiculo"></asp:Label>
<br />
<asp:Label ID="Label3" runat="server" Text="Tipo"></asp:Label>
<br />
<asp:TextBox ID="txtTipo" runat="server" OnTextChanged="TextBox1_TextChanged" Width="471px"></asp:TextBox>
<br />
<asp:Label ID="Label4" runat="server" Text="Marca"></asp:Label>
<br />
<asp:TextBox ID="txtMarca" runat="server" Width="469px"></asp:TextBox>
<br />
<asp:Label ID="Label5" runat="server" Text="Placa"></asp:Label>
<br />
<asp:TextBox ID="txtPlaca" runat="server" Width="420px"></asp:TextBox>
<asp:Button ID="btnInsert" runat="server" OnClick="btnInsert_Click" Text="Insert" />
<br />
<br />
<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" Text="Lista de Veiculos"></asp:Label>
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSourceVeiculos" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="tipo " HeaderText="tipo " SortExpression="tipo " />
        <asp:BoundField DataField="marca" HeaderText="marca" SortExpression="marca" />
        <asp:BoundField DataField="placa" HeaderText="placa" SortExpression="placa" />
    </Columns>
    <EditRowStyle BackColor="#7C6F57" />
    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#E3EAEB" />
    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F8FAFA" />
    <SortedAscendingHeaderStyle BackColor="#246B61" />
    <SortedDescendingCellStyle BackColor="#D4DFE1" />
    <SortedDescendingHeaderStyle BackColor="#15524A" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSourceVeiculos" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [veiculo] WHERE [Id] = @Id" InsertCommand="INSERT INTO [veiculo] ([tipo ], [marca], [placa]) VALUES (@tipo_, @marca, @placa)" OnSelecting="SqlDataSourceVeiculos_Selecting" SelectCommand="SELECT * FROM [veiculo]" UpdateCommand="UPDATE [veiculo] SET [tipo ] = @tipo_, [marca] = @marca, [placa] = @placa WHERE [Id] = @Id">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="tipo_" Type="String" />
        <asp:Parameter Name="marca" Type="String" />
        <asp:Parameter Name="placa" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="tipo_" Type="String" />
        <asp:Parameter Name="marca" Type="String" />
        <asp:Parameter Name="placa" Type="String" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
