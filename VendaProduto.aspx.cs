using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VendaProduto : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            WebForm.App_Code.Camadas.BLL.VendaProduto bllVendaProduto = new WebForm.App_Code.Camadas.BLL.VendaProduto();

            // grvProdutos.DataSource = bllCliente.Select();
            grvVendaProd.DataBind();

            Cache["OP"] = "X";
            habilitaCampos(false);
        }
    }

    protected void habilitaCampos(bool status)
    {
        if (Cache["OP"].ToString() != "E")
        {
            txtId.Text = "";
            txtModelo.Text = "";
            txtMarca.Text = "";
            txtEstoque.Text = "";
            txtValor.Text = "";
            txtDesc.Text = "";

        }

        txtId.Enabled = false;
        txtCategoria.Enabled = status;
        txtModelo.Enabled = status;
        txtMarca.Enabled = status;
        txtEstoque.Enabled = status;
        txtValor.Enabled = status;
        txtDesc.Enabled = status;
    }

    protected void grvVendaProd_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            GridViewRow linha = grvVendaProd.Rows[Convert.ToInt32(e.CommandArgument)];

            txtId.Text = linha.Cells[0].Text;
           txtCategoria.Text = linha.Cells[1].Text;
            txtModelo.Text = linha.Cells[2].Text;
            txtMarca.Text = linha.Cells[3].Text;
            txtEstoque.Text = linha.Cells[4].Text;
            txtValor.Text = linha.Cells[5].Text;
            txtDesc.Text = linha.Cells[6].Text;


        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Cookies["id"].Value = txtId.Text;
        Response.Cookies["categoria"].Value = txtCategoria.Text;
        Response.Cookies["modelo"].Value = txtModelo.Text;
        Response.Cookies["marca"].Value = txtMarca.Text;
        Response.Cookies["estoque"].Value = txtEstoque.Text;
        Response.Cookies["valor"].Value = txtValor.Text;
        Response.Cookies["desc"].Value = txtDesc.Text;

        Response.Redirect("venda.aspx");

        
        
    }
}