<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Venda.aspx.cs" Inherits="Venda" %>

<!DOCTYPE html>
<link href="Content/bootstrap.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            width: 122px;
            text-align: center;
        }
        .auto-style4 {
            width: 278px;
        }
        .auto-style5 {
            width: 87px;
        }
        .auto-style6 {
            font-family: cursive;
            font-size: x-large;
        }
        .auto-style7 {
            width: 1160px;
            height: 696px;
        }
        .newStyle1 {
            border-style: solid;
            background-color: #C0C0C0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style7">
    
    &nbsp;<asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
            <Items>
                <asp:MenuItem NavigateUrl="~/Index.aspx" Text="Home" Value="Home"></asp:MenuItem>
                <asp:MenuItem Text="Cadastro" Value="Cadastro">
                    <asp:MenuItem NavigateUrl="~/Cliente.aspx" Text="Cliente" Value="Cliente"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Produtos.aspx" Text="Produtos" Value="Produtos"></asp:MenuItem>
                </asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/VendaProduto.aspx" Text="Carrinho" Value="New Item"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Venda.aspx" Text="Compra" Value="Compra"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="~/Validacao.aspx" Text="Login" Value="Login"></asp:MenuItem>
            </Items>
        </asp:Menu>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;<br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style6"><strong>&nbsp;&nbsp; Finalizar Compra&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></span>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="grvVenda" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" OnRowCommand="grvVenda_RowCommand">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="nome" HeaderText="Nome" SortExpression="nome" />
                <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebFormConnectionString %>" DeleteCommand="DELETE FROM [Cliente] WHERE [id] = @id" InsertCommand="INSERT INTO [Cliente] ([nome]) VALUES (@nome)" SelectCommand="SELECT [id], [nome] FROM [Cliente]" UpdateCommand="UPDATE [Cliente] SET [nome] = @nome WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nome" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nome" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <table class="newStyle1">
            <tr>
                <td class="auto-style3">&nbsp; ID:&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="lblId" runat="server"></asp:Label>
                </td>
                <td class="auto-style5">
                    ID Cliente:</td>
                <td>
                    <asp:Label ID="lblId0" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Categoria:</td>
                <td class="auto-style4">
                    <asp:Label ID="lblCategoria" runat="server"></asp:Label>
                </td>
                <td class="auto-style5">
                    Nome:</td>
                <td>
                    <asp:Label ID="lblNome" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Modelo:</td>
                <td class="auto-style4">
                    <asp:Label ID="lblModelo" runat="server"></asp:Label>
                </td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Marca:</td>
                <td class="auto-style4">
                    <asp:Label ID="lblMarca" runat="server"></asp:Label>
                </td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Estoque:</td>
                <td class="auto-style4">
                    <asp:Label ID="lblEstoque" runat="server"></asp:Label>
                </td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Valor:</td>
                <td class="auto-style4">
                    <asp:Label ID="lblValor" runat="server"></asp:Label>
                </td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Descrição:</td>
                <td class="auto-style4">
                    <asp:Label ID="lblDesc" runat="server"></asp:Label>
                </td>
                <td class="auto-style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:Button ID="btnFinaComp" runat="server" CssClass="btn btn-outline-success" Text="Finalizar Compra" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
&nbsp;<br />
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    </div>
    </form>
</body>
</html>
