using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Produtos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            WebForm.App_Code.Camadas.BLL.Produtos bllProdutos = new WebForm.App_Code.Camadas.BLL.Produtos();

            // grvProdutos.DataSource = bllCliente.Select();
             grvProdutos.DataBind();

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
            txtMarca.Text = string.Empty;
            txtQtdEstoque.Text = "";
            txtValor.Text = "";
            txtDesc.Text = "";
            
        }

        txtId.Enabled = false;
        ddlCategoria.Enabled = status;
        txtModelo.Enabled = status;
        txtMarca.Enabled = status;
        txtQtdEstoque.Enabled = status;
        txtValor.Enabled = status;
        txtDesc.Enabled = status;
        

        btnInserir.Enabled = !status;
        //btnEditar.Enabled = !status;
        btnRemover.Enabled = !status;
        btnGravar.Enabled = status;
        btnCancelar.Enabled = status;
    }

    protected void btnInserir_Click(object sender, EventArgs e)
    {
        Cache["OP"] = "I";
        habilitaCampos(true);
        txtId.Text = "-1";
        ddlCategoria.Focus();
    }

    protected void btnCancelar_Click(object sender, EventArgs e)
    {
        Cache["OP"] = "X";
        habilitaCampos(false);
    }

    protected void btnGravar_Click(object sender, EventArgs e)
    {
        WebForm.App_Code.Camadas.BLL.Produtos bllProdutos = new WebForm.App_Code.Camadas.BLL.Produtos();
        WebForm.App_Code.Camadas.MODEL.Produtos Produtos = new WebForm.App_Code.Camadas.MODEL.Produtos();

        Produtos.id = Convert.ToInt32(txtId.Text);
        Produtos.categoria = ddlCategoria.Text;
        Produtos.modelo = txtModelo.Text;
        Produtos.marca = txtMarca.Text;
        Produtos.qtdEstoque = Convert.ToInt32(txtQtdEstoque.Text);
        Produtos.valor = Convert.ToSingle(txtValor.Text);
        Produtos.descricao = txtDesc.Text;
        

        if (Cache["OP"].ToString() == "I")
            bllProdutos.Insert(Produtos);
        else if (Cache["OP"].ToString() == "E")
            bllProdutos.Update(Produtos);

        grvProdutos.DataBind();

        if (Cache["OP"].ToString() == "I")
            grvProdutos.SetPageIndex(grvProdutos.PageCount);

        Cache["OP"] = "X;";
        habilitaCampos(false);
    }

    protected void grvProdutos_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void btnRemover_Click(object sender, EventArgs e)
    {
        if (txtId.Text != String.Empty)
            if (Convert.ToInt32(txtId.Text) > 0)
            {
                WebForm.App_Code.Camadas.BLL.Produtos bllProdutos = new WebForm.App_Code.Camadas.BLL.Produtos();
                WebForm.App_Code.Camadas.MODEL.Produtos produto = new WebForm.App_Code.Camadas.MODEL.Produtos();


                produto.id = Convert.ToInt32(txtId.Text);
                bllProdutos.Delete(produto);

                //grvProdutos.DataSource = bllProdutos.Select();
                grvProdutos.DataBind();

                Cache["OP"] = "X";
                habilitaCampos(false);

            }
    }

    protected void grvProdutos_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            GridViewRow linha = grvProdutos.Rows[Convert.ToInt32(e.CommandArgument)];
            txtId.Text = linha.Cells[0].Text;
            //ddlCategoria.Text = linha.Cells[1].Text;
            txtModelo.Text = linha.Cells[2].Text;
            txtMarca.Text = linha.Cells[3].Text;
            txtQtdEstoque.Text = linha.Cells[4].Text;
            txtValor.Text = linha.Cells[5].Text;
            txtDesc.Text = linha.Cells[6].Text;
            
        }
    }

   /* protected void btnEditar_Click(object sender, EventArgs e)
    {
        if (txtId.Text != String.Empty)
            if (Convert.ToInt32(txtId.Text) > 0)
            {
                Cache["OP"] = "E";
                habilitaCampos(true);
                
            }
    }*/
}
