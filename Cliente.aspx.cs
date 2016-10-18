using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cliente : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            WebForm.App_Code.Camadas.BLL.Cliente bllCliente = new WebForm.App_Code.Camadas.BLL.Cliente();

            //gvCliente.DataSource = bllCliente.Select();
            gvCliente.DataBind();

            Cache["OP"] = "X";
            habilitaCampos(false);
        }
    }

    protected void habilitaCampos(bool status)
    {
        if (Cache["OP"].ToString() != "E")
        {
            txtId.Text = "";
            txtNome.Text = "";
            txtCpf.Text = "";
            txtEndereco.Text = "";
            txtCidade.Text = "";
            txtTelefone.Text = "";
            txtEmail.Text = "";
            txtIdade.Text = "";
        }

        txtId.Enabled = false;
        txtNome.Enabled = status;
        txtCpf.Enabled = status;
        txtEndereco.Enabled = status;
        txtCidade.Enabled = status;
        txtTelefone.Enabled = status;
        rdbSexo.Enabled = status;
        txtEmail.Enabled = status;
        txtIdade.Enabled = status;

        btnInserir.Enabled = !status;
        btnEditar.Enabled = !status;
        btnRemover.Enabled = !status;
        btnGravar.Enabled = status;
        btnCancelar.Enabled = status;
    }

    protected void btnInserir_Click(object sender, EventArgs e)
    {
        Cache["OP"] = "I";
        habilitaCampos(true);
        txtId.Text = "-1";
        txtNome.Focus();
    }


    protected void btnCancelar_Click(object sender, EventArgs e)
    {
        Cache["OP"] = "X";
        habilitaCampos(false);
    }

    protected void btnGravar_Click(object sender, EventArgs e)
    {
        WebForm.App_Code.Camadas.BLL.Cliente bllCliente = new WebForm.App_Code.Camadas.BLL.Cliente();
        WebForm.App_Code.Camadas.MODEL.Cliente Cliente = new WebForm.App_Code.Camadas.MODEL.Cliente();

        Cliente.id = Convert.ToInt32(txtId.Text);
        Cliente.nome = txtNome.Text;
        Cliente.cpf = txtCpf.Text;
        Cliente.endereco = txtEndereco.Text;
        Cliente.cidade = txtCidade.Text;
        Cliente.telefone = txtTelefone.Text;
        Cliente.sexo = rdbSexo.Text;
        Cliente.email = txtEmail.Text;
        Cliente.datanasc = Convert.ToInt32(txtIdade.Text);


        if (Cache["OP"].ToString() == "I")
            bllCliente.Insert(Cliente);
        else if (Cache["OP"].ToString() == "E")
            bllCliente.Update(Cliente);

        //gvCliente.DataSource = bllCliente.Select();
        gvCliente.DataBind();

        if (Cache["OP"].ToString() == "I")
            gvCliente.SetPageIndex(gvCliente.PageCount);

        Cache["OP"] = "X;";
        habilitaCampos(false);
    }

    protected void gvCliente_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

    }

    protected void btnEditar_Click(object sender, EventArgs e)
    {
        if (txtId.Text != String.Empty)
            if (Convert.ToInt32(txtId.Text) > 0)
            {
                Cache["OP"] = "E";
                habilitaCampos(true);
                txtNome.Focus();
            }
    }

    protected void gvCliente_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            GridViewRow linha = gvCliente.Rows[Convert.ToInt32(e.CommandArgument)];
            txtId.Text = linha.Cells[0].Text;
            txtNome.Text = linha.Cells[1].Text;
            txtCpf.Text = linha.Cells[2].Text;
            txtEndereco.Text = linha.Cells[3].Text;
            txtCidade.Text = linha.Cells[4].Text;
            txtTelefone.Text = linha.Cells[5].Text;
            //rdbSexo.Text = linha.Cells[6].Text;
            txtEmail.Text = linha.Cells[7].Text;
            txtIdade.Text = linha.Cells[8].Text;
        }
    }

    protected void btnRemover_Click(object sender, EventArgs e)
    {
        if (txtId.Text != String.Empty)
            if (Convert.ToInt32(txtId.Text) > 0)
            {
                WebForm.App_Code.Camadas.BLL.Cliente bllCliente = new WebForm.App_Code.Camadas.BLL.Cliente();
                WebForm.App_Code.Camadas.MODEL.Cliente cliente = new WebForm.App_Code.Camadas.MODEL.Cliente();
                

                cliente.id = Convert.ToInt32(txtId.Text);
                bllCliente.Delete(cliente);

                gvCliente.DataBind();

                Cache["OP"] = "X";
                habilitaCampos(false);

            }

    }

    protected void gvCliente_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

}



