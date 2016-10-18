<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VendaProduto.aspx.cs" Inherits="VendaProduto" %>

<!DOCTYPE html>
<link href="Content/bootstrap.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1397px;
            height: 697px;
        }
        .auto-style2 {
            text-align: left;
        }
        .auto-style9 {
            width: 212px;
            text-align: center;
            height: 23px;
        }
        .auto-style10 {
            text-align: left;
            height: 23px;
        }
        .auto-style11 {
            margin-top: 0px;
        }
        .auto-style12 {
            text-align: center;
            height: 373px;
        }
        .newStyle1 {
            border-style: solid;
            background-color: #C0C0C0;
        }
        .auto-style13 {
            border-style: solid;
            background-color: #C0C0C0;
            width: 395px;
            height: 248px;
        }
        .auto-style14 {
            width: 212px;
            text-align: center;
        }
        .auto-style15 {
            font-family: Consolas;
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <div class="auto-style12">
            <br />
            <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
                <Items>
                    <asp:MenuItem NavigateUrl="~/Index.aspx" Text="Home" Value="Home"></asp:MenuItem>
                    <asp:MenuItem Text="Cadastros" Value="Cadastros">
                        <asp:MenuItem NavigateUrl="~/Cliente.aspx" Text="Clientes" Value="Clientes"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Produtos.aspx" Text="Produtos" Value="Produtos"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/VendaProduto.aspx" Text="Carrinho" Value="Carrinho"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Venda.aspx" Text="Venda" Value="Venda"></asp:MenuItem>
                    <asp:MenuItem NavigateUrl="~/Validacao.aspx" Text="Login" Value="Login"></asp:MenuItem>
                </Items>
            </asp:Menu>
            <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebFormConnectionString %>" SelectCommand="SELECT [id], [categoria], [modelo], [marca], [qtdEstoque], [valor], [descricao] FROM [Produtos]"></asp:SqlDataSource>
    
            <span class="auto-style15"><strong>Vendas de Produtos</strong></span><br />
    
            <asp:GridView ID="grvVendaProd" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" HorizontalAlign="Center" PageSize="5" Width="581px" CssClass="auto-style11" DataKeyNames="id" OnRowCommand="grvVendaProd_RowCommand">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="ID" SortExpression="id" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="categoria" HeaderText="Categoria" SortExpression="categoria" />
                    <asp:BoundField DataField="modelo" HeaderText="Modelo" SortExpression="modelo" />
                    <asp:BoundField DataField="marca" HeaderText="Marca" SortExpression="marca" />
                    <asp:BoundField DataField="qtdEstoque" HeaderText="Estoque" SortExpression="qtdEstoque" />
                    <asp:BoundField DataField="valor" HeaderText="Valor" SortExpression="valor" DataFormatString="{0:C2}" />
                    <asp:BoundField DataField="descricao" HeaderText="Descrição" SortExpression="descricao" />
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
            <div>
            </div>
        <div class="auto-style2">
            <br />
            <br />
        </div>
            <br />
            <br />
            <br />
            <br />
        </div>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Panel ID="Panel1" runat="server" Height="289px" Width="1392px">
            <table class="auto-style13" align="center">
                <tr>
                    <td class="auto-style9">
                        <asp:Label ID="Label3" runat="server" Text="ID"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        <asp:Label ID="Label4" runat="server" Text="Categoria"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtCategoria" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        <asp:Label ID="Label5" runat="server" Text="Modelo"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtModelo" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        <asp:Label ID="Label6" runat="server" Text="Marca"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtMarca" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        <asp:Label ID="Label2" runat="server" Text="Disponível em estoque:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtEstoque" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        <asp:Label ID="Label7" runat="server" Text="Valor"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtValor" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        <asp:Label ID="Label1" runat="server" Text="Descrição:"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtDesc" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-outline-primary" OnClick="Button1_Click" Text="Comprar" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
    </div>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
