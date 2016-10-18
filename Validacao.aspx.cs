using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Validacao : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        args.IsValid =  (this.txtLogin.Text == "admin");
    }

    protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
    {
        args.IsValid = (this.txtSenha.Text == "senha123");
    }

    protected void btnCancelar_Click(object sender, EventArgs e)
    {

    }

    protected void btnEnviar_Click(object sender, EventArgs e)
    {
        if (txtLogin.Text == "admin" && txtSenha.Text == "senha123")
            Response.Redirect("Index.aspx");
        //else Response.Redirect("Validacao.aspx");
    }
}