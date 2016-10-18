<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cliente.aspx.cs" Inherits="Cliente" %>

<!DOCTYPE html>
<link href="Content/bootstrap.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style26 {
            width: 60%;
            height: 23px;
        }
        .auto-style27 {
            width: 78px;
        }
        .auto-style32 {
            text-align: left;
            width: 1015px;
        }
        .auto-style38 {
            width: 78px;
            height: 33px;
        }
        .auto-style39 {
            text-align: left;
            height: 33px;
            width: 1015px;
        }
        .auto-style33 {
            width: 60%;
        }
        .auto-style34 {
            width: 126px;
        }
        .auto-style35 {
            width: 151px;
        }
        .auto-style36 {
            width: 135px;
        }
        .auto-style37 {
            width: 122px;
        }
        .auto-style41 {
            margin-top: 0px;
        }
        .auto-style42 {
            margin-left: 225px;
        }
        .auto-style43 {
            height: 1084px;
        }
        .auto-style44 {
            font-size: xx-large;
            font-family: Cambria;
            color: #800000;
        }
    </style>
</head>
<body style="height: 1116px">
    <form id="form1" runat="server">
    <div class="auto-style43">
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <strong>
        <asp:Menu ID="Menu1" runat="server" CssClass="newStyle1" Orientation="Horizontal">
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
        </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <span class="auto-style44"><strong><em>Cadastro de Clientes</em></strong></span><br />
        <br />
        <table class="auto-style26" style="border-style: double; border-color: #FF0000">
            <tr>
                <td class="auto-style27">
                    <asp:Label ID="Label7" runat="server" Text="ID:"></asp:Label>
                </td>
                <td class="auto-style32">
                    <asp:TextBox ID="txtId" runat="server" Visible="False" Width="39px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style27">
                    <asp:Label ID="Label3" runat="server" Text="Nome:"></asp:Label>
                </td>
                <td class="auto-style32">
                    <asp:TextBox ID="txtNome" runat="server" Width="331px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style27">
                    <asp:Label ID="Label2" runat="server" Text="CPF:"></asp:Label>
                </td>
                <td class="auto-style32">
                    <asp:TextBox ID="txtCpf" runat="server" Height="16px" Width="146px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style27">
                    <asp:Label ID="Label4" runat="server" Text="Endereço:"></asp:Label>
                </td>
                <td class="auto-style32">
                    <asp:TextBox ID="txtEndereco" runat="server" Width="326px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style27">
                    <asp:Label ID="Label12" runat="server" Text="Cidade:"></asp:Label>
                </td>
                <td class="auto-style32">
                    <asp:TextBox ID="txtCidade" runat="server" Width="194px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style38">
                    <asp:Label ID="Label8" runat="server" Text="Telefone:"></asp:Label>
                </td>
                <td class="auto-style39">
                    <asp:TextBox ID="txtTelefone" runat="server" Width="148px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style27">
                    <asp:Label ID="Label9" runat="server" Text="Sexo:"></asp:Label>
                </td>
                <td class="auto-style32">
                    <asp:Panel ID="Panel1" runat="server" Height="51px">
                        &nbsp;<asp:RadioButtonList ID="rdbSexo" runat="server" CssClass="auto-style41" Font-Bold="True" Font-Italic="False" Height="16px" RepeatDirection="Horizontal">
                            <asp:ListItem Selected="True" Value="M">Masculino</asp:ListItem>
                            <asp:ListItem Value="F">Feminino</asp:ListItem>
                        </asp:RadioButtonList>
                        <br />
                        <br />
                        <br />
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="auto-style27">
                    <asp:Label ID="Label6" runat="server" Text="E-Mail:"></asp:Label>
                </td>
                <td class="auto-style32">
                    <asp:TextBox ID="txtEmail" runat="server" Width="258px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style27">
                    <asp:Label ID="Label10" runat="server" Text="Idade:"></asp:Label>
                </td>
                <td class="auto-style32">
                    <asp:TextBox ID="txtIdade" runat="server" Height="16px" Width="42px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <table class="auto-style33" style="border-color: #FF0000; border-style: double;">
            <tr style="border-style: double; border-color: #FF0000">
                <td class="auto-style34">
                    <asp:Button ID="btnInserir" runat="server" CssClass="btn btn-primary" OnClick="btnInserir_Click" Text="Adicionar" />
                </td>
                <td class="auto-style35">
                    <asp:Button ID="btnEditar" runat="server" CssClass="btn btn-warning" Text="Modificar" OnClick="btnEditar_Click" />
                </td>
                <td class="auto-style36">
                    <asp:Button ID="btnGravar" runat="server" CssClass="btn btn-success" OnClick="btnGravar_Click" Text="Salvar" />
                </td>
                <td class="auto-style37">
                    <asp:Button ID="btnRemover" runat="server" CssClass="btn btn-info" Text="Remover" OnClick="btnRemover_Click" />
                </td>
                <td>
                    <asp:Button ID="btnCancelar" runat="server" CssClass="btn btn-danger" OnClick="btnCancelar_Click" Text="Cancelar" />
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        <div class="text-xs-center">
            <asp:GridView ID="gvCliente"  runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="2px" CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="Black" PageSize="5" GridLines="Vertical" CssClass="table-active" OnPageIndexChanging="gvCliente_PageIndexChanging" OnRowCommand="gvCliente_RowCommand" OnSelectedIndexChanged="gvCliente_SelectedIndexChanged" AllowSorting="True">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="nome" HeaderText="Nome" SortExpression="nome" />
                    <asp:BoundField DataField="cpf" HeaderText="CPF" SortExpression="cpf" />
                    <asp:BoundField DataField="endereco" HeaderText="Endereço" SortExpression="endereco" />
                    <asp:BoundField DataField="cidade" HeaderText="Cidade" SortExpression="cidade" />
                    <asp:BoundField DataField="telefone" HeaderText="Telefone" SortExpression="telefone" />
                    <asp:BoundField DataField="sexo" HeaderText="Sexo" SortExpression="sexo" />
                    <asp:BoundField DataField="email" HeaderText="E-mail" SortExpression="email" />
                    <asp:BoundField DataField="datanasc" HeaderText="Idade" SortExpression="datanasc" />
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True">
                    <ControlStyle BackColor="Black" BorderColor="#FFCC66" ForeColor="White" />
                    </asp:CommandField>
                </Columns>
                <FooterStyle BackColor="#CCCCCC" Font-Names="Batang" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="Gray" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebFormConnectionString %>" SelectCommand="SELECT [id], [nome], [cpf], [endereco], [cidade], [telefone], [sexo], [email], [datanasc] FROM [Cliente]" DeleteCommand="DELETE FROM [Cliente] WHERE [id] = @id" InsertCommand="INSERT INTO [Cliente] ([nome], [cpf], [endereco], [cidade], [telefone], [sexo], [email], [datanasc]) VALUES (@nome, @cpf, @endereco, @cidade, @telefone, @sexo, @email, @datanasc)" UpdateCommand="UPDATE [Cliente] SET [nome] = @nome, [cpf] = @cpf, [endereco] = @endereco, [cidade] = @cidade, [telefone] = @telefone, [sexo] = @sexo, [email] = @email, [datanasc] = @datanasc WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nome" Type="String" />
                <asp:Parameter Name="cpf" Type="String" />
                <asp:Parameter Name="endereco" Type="String" />
                <asp:Parameter Name="cidade" Type="String" />
                <asp:Parameter Name="telefone" Type="String" />
                <asp:Parameter Name="sexo" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="datanasc" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nome" Type="String" />
                <asp:Parameter Name="cpf" Type="String" />
                <asp:Parameter Name="endereco" Type="String" />
                <asp:Parameter Name="cidade" Type="String" />
                <asp:Parameter Name="telefone" Type="String" />
                <asp:Parameter Name="sexo" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="datanasc" Type="Int32" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Height="50px" Width="242px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:CommandField ShowInsertButton="True" ButtonType="Button" />
            </Fields>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        </asp:DetailsView>
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
