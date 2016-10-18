<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Validacao.aspx.cs" Inherits="Validacao" %>

<!DOCTYPE html>
<link href="Content/bootstrap.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 46%;
        }
        .auto-style2 {
            width: 302px;
            background-color: #CCFFFF;
        }
        .auto-style3 {
            width: 1374px;
            background-color: #CCFFFF;
        }
        .auto-style4 {
            font-size: x-large;
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
  
a {
  color: #0275d8;
  text-decoration: none;
}

  a,
  a:visited {
    text-decoration: underline;
  }
  
a {
  background-color: transparent;
}

        .auto-style6 {
            text-align: center;
        }
        .auto-style7 {
            font-size: xx-large;
            font-family: "Bookman Old Style";
        }
        .newStyle1 {
            background-color: #000000;
            border-color: #FFFFFF;
            border-style: groove;
            color: #FFFFFF;
        }
        .newStyle1 {
            color: #FFFFFF;
        }
        .newStyle1 {
            background-color: #6699FF;
            color: #000000;
            border-style: solid;
            border-color: #000000;
        }
        .newStyle1 {
            background-color: #FFFFFF;
        }
        .auto-style8 {
            width: 1117px;
            height: 440px;
            text-align: center;
            background-color: #0099FF;
        }
        .auto-style9 {
            width: 1374px;
            text-align: center;
            background-color: #CCFFFF;
        }
        .auto-style10 {
            width: 1374px;
            text-align: left;
            background-color: #CCFFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style8">
    
    &nbsp;<br />
        <strong>
        <asp:Menu ID="Menu1" runat="server" CssClass="newStyle1" Orientation="Horizontal" Visible="False">
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
        </strong>
        <div class="auto-style6">
            <br />
            <br />
            <span class="auto-style7"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><b>L</b><span class="alert-link">ogin</span></span><br />
            <br />
            <br />
        </div>
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Login:"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtLogin" runat="server"></asp:TextBox>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtLogin" CssClass="auto-style4" ErrorMessage="Login Incorreto" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Senha:"></asp:Label>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtSenha" runat="server"></asp:TextBox>
                    <asp:CustomValidator ID="CustomValidator2" runat="server" CssClass="auto-style4" ErrorMessage="Senha Incorreta !!!" OnServerValidate="CustomValidator2_ServerValidate"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="btnEnviar" CssClass="btn-success" runat="server" Text="OK" OnClick="btnEnviar_Click" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="btnCancelar" CssClass="btn-danger"  runat="server" Text="Cancelar" OnClick="btnCancelar_Click" PostBackUrl="~/Index.aspx" Width="87px"  />
                </td>
            </tr>
        </table>
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
