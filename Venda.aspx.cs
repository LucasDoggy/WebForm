using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Venda : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblId.Text = Request.Cookies["id"].Value.ToString();
        lblCategoria.Text = Request.Cookies["categoria"].Value.ToString();
        lblModelo.Text = Request.Cookies["modelo"].Value.ToString();
        lblMarca.Text = Request.Cookies["marca"].Value.ToString();
        lblEstoque.Text = Request.Cookies["estoque"].Value.ToString();
        lblValor.Text = Request.Cookies["valor"].Value.ToString();
        lblDesc.Text = Request.Cookies["desc"].Value.ToString();
    }

    protected void grvVenda_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            GridViewRow linha = grvVenda.Rows[Convert.ToInt32(e.CommandArgument)];

            lblId0.Text = linha.Cells[0].Text;
            lblNome.Text = linha.Cells[1].Text;
           

        }
    }
}