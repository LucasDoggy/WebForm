<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Produtos.aspx.cs" Inherits="Produtos" %>

<!DOCTYPE html>
<link href="Content/bootstrap.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style32 {
            width: 83%;
            height: 213px;
            background-color: #99CCFF;
        }
        .auto-style33 {
            width: 159px;
            text-align: left;
        }
        .auto-style34 {
            width: 83%;
            height: 49px;
        }
        .auto-style35 {
            width: 206px;
            background-color: #99CCFF;
        }
        .auto-style30 {
        text-align: center;
            background-color: #99CCFF;
        }
        .auto-style36 {
            text-align: left;
        }
        .auto-style38 {
            text-align: center;
            width: 1150px;
            height: 1087px;
            background-color: #FFFFFF;
        }
        .auto-style39 {
            height: 408px;
            width: 1124px;
            text-align: left;
        }
        .auto-style41 {
            text-align: center;
            width: 165px;
            background-color: #99CCFF;
        }
        .auto-style42 {
            text-align: center;
            width: 260px;
            background-color: #99CCFF;
        }
    
ol,
ul,
dl {
  margin-top: 0;
  margin-bottom: 1rem;
}

*,
*::before,
*::after {
  -webkit-box-sizing: inherit;
          box-sizing: inherit;
}

  *,
  *::before,
  *::after,
  *::first-letter,
  *::first-line {
    text-shadow: none !important;
    -webkit-box-shadow: none !important;
            box-shadow: none !important;
  }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style38">
    
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
    
        &nbsp;
        <br />
        <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Large" ForeColor="#4A42AE" Text="Cadastro de produtos"></asp:Label>
        <br />
        <table class="auto-style32" style="border-style: groove; border-color: #FF0000">
            <tr>
                <td class="auto-style33">
                    <asp:Label ID="Label5" runat="server" Text="ID:"></asp:Label>
                </td>
                <td class="auto-style36">
                    <asp:TextBox ID="txtId" runat="server" Width="29px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style33">
                    <asp:Label ID="Label1" runat="server" Text="Categoria:"></asp:Label>
                </td>
                <td class="auto-style36">
                    <asp:DropDownList ID="ddlCategoria" runat="server" Height="22px" Width="115px">
                        <asp:ListItem>Computador</asp:ListItem>
                        <asp:ListItem>Notebook</asp:ListItem>
                        <asp:ListItem>Tablet</asp:ListItem>
                        <asp:ListItem>Celular</asp:ListItem>
                        <asp:ListItem>Outros</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style33">
                    <asp:Label ID="Label2" runat="server" Text="Modelo:"></asp:Label>
                </td>
                <td class="auto-style36">
                    <asp:TextBox ID="txtModelo" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style33">
                    <asp:Label ID="Label4" runat="server" Text="Marca:"></asp:Label>
                </td>
                <td class="auto-style36">
                    <asp:TextBox ID="txtMarca" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style33">
                    <asp:Label ID="Label6" runat="server" Text="Quantidade em Estoque:"></asp:Label>
                </td>
                <td class="auto-style36">
                    <asp:TextBox ID="txtQtdEstoque" runat="server" Width="48px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style33">
                    <asp:Label ID="Label7" runat="server" Text="Valor:"></asp:Label>
                </td>
                <td class="auto-style36">
                    <asp:TextBox ID="txtValor" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style33">
                    <asp:Label ID="Label8" runat="server" Text="Descrição:"></asp:Label>
                </td>
                <td class="auto-style36">
                    <asp:TextBox ID="txtDesc" runat="server" Height="16px" Width="693px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <div>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
        <table class="auto-style34" style="border-style: groove; border-color: #FF0000">
            <tr>
                <td class="auto-style35">&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnInserir" runat="server" CssClass="btn btn-primary" OnClick="btnInserir_Click" Text="Adicionar" />
                </td>
                <td class="auto-style30">
                    <asp:Button ID="btnGravar" runat="server" CssClass="btn btn-success" OnClick="btnGravar_Click" Text="Salvar" />
                </td>
                <td class="auto-style42">
                    <asp:Button ID="btnRemover" runat="server" CssClass="btn btn-info" Text="Remover" OnClick="btnRemover_Click" />
                </td>
                <td class="auto-style41">
                    <asp:Button ID="btnCancelar" runat="server" CssClass="btn btn-danger" OnClick="btnCancelar_Click" Text="Cancelar" />
                </td>
            </tr>
        </table>
        <div class="auto-style36">
            <br />
            <br />
            <br />
            <div class="auto-style39">
                <asp:GridView ID="grvProdutos" runat="server"  AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" CssClass="table" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" HorizontalAlign="Center" OnSelectedIndexChanged="grvProdutos_SelectedIndexChanged" Width="763px" OnRowCommand="grvProdutos_RowCommand">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="categoria" HeaderText="Categoria" SortExpression="categoria"></asp:BoundField>
                        <asp:BoundField DataField="modelo" HeaderText="Modelo" SortExpression="modelo" />
                        <asp:BoundField DataField="marca" HeaderText="Marca" SortExpression="marca" />
                        <asp:BoundField DataField="qtdEstoque" HeaderText="Estoque" SortExpression="qtdEstoque" />
                        <asp:BoundField DataField="valor" HeaderText="Valor" SortExpression="valor" />
                        <asp:BoundField DataField="descricao" HeaderText="Descrição" SortExpression="descricao" />
                        <asp:CommandField ButtonType="Button" ShowEditButton="True" ShowSelectButton="True">
                        <ControlStyle BackColor="Black" BorderColor="#FFCC66" ForeColor="White" />
                        </asp:CommandField>
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
            </div>
            <br />
        </div>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebFormConnectionString %>" SelectCommand="SELECT [id], [categoria], [modelo], [marca], [qtdEstoque], [valor], [descricao] FROM [Produtos]" DeleteCommand="DELETE FROM [Produtos] WHERE [id] = @id" InsertCommand="INSERT INTO [Produtos] ([categoria], [modelo], [marca], [qtdEstoque], [valor], [descricao]) VALUES (@categoria, @modelo, @marca, @qtdEstoque, @valor, @descricao)" UpdateCommand="UPDATE [Produtos] SET [categoria] = @categoria, [modelo] = @modelo, [marca] = @marca, [qtdEstoque] = @qtdEstoque, [valor] = @valor, [descricao] = @descricao WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="categoria" Type="String" />
                <asp:Parameter Name="modelo" Type="String" />
                <asp:Parameter Name="marca" Type="String" />
                <asp:Parameter Name="qtdEstoque" Type="Int32" />
                <asp:Parameter Name="valor" Type="Double" />
                <asp:Parameter Name="descricao" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="categoria" Type="String" />
                <asp:Parameter Name="modelo" Type="String" />
                <asp:Parameter Name="marca" Type="String" />
                <asp:Parameter Name="qtdEstoque" Type="Int32" />
                <asp:Parameter Name="valor" Type="Double" />
                <asp:Parameter Name="descricao" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
