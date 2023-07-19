using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PruebaTI
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            string cui = txtCUI.Text;
            string usuario = txtUsuario.Text;
            string password = txtPassword.Text;

            if (cui == "" || usuario == "" || password == "")
            {
                Response.Write("<script>alert('Por favor, complete todos los campos.');</script>");
            }
            else
            {
                Session["CUI"] = cui;
                Session["usuario"] = usuario;
                Response.Redirect("WebForm2.aspx");
            }
        }
    }
}