using PruebaTI.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PruebaTI
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Retrieve the query parameters from the URL
                string cui = (String)Session["CUI"];

                // Check if the value is not null
                if (!string.IsNullOrEmpty(cui))
                {
                    // Display the retrieved value
                    lblCUI.Text = "CUI: " + cui;

                    // Call EncontrarInformacion method to populate additional controls
                    EncontrarInformacion(cui);
                }
            }
        }

        private void EncontrarInformacion(string CUI)
        {
            Service1Client serviceClient = new Service1Client();
            String[] datos = serviceClient.tomarInformacion(CUI);

            if (datos != null)
            {
                String apellidos = datos[0];
                String nombres = datos[1];
                String grupo = datos[2];

                lblApellidos.Text = apellidos;
                lblNombres.Text = nombres;
                lblGrupo.Text = grupo;
            }
            else
            {
                Response.Write("<script>alert('No se encontró información para el CUI proporcionado.');</script>");
            }
        }
        protected void btnVerHorario(object sender, EventArgs e)
        {
            Response.Redirect("WebForm3");
        }
    }
}