using PruebaTI.ServiceReference1;
using PruebaTI.ServiceReference2;
using PruebaTI.ServiceReference3;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
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
                string[] laboratorios = serviceCall();
                foreach (string laboratorio in laboratorios)
                {
                    ddlGroup.Items.Add(new ListItem(laboratorio, laboratorio));
                }
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
        private String[] serviceCall()
        {
            Service2Client client = new Service2Client();
            String[] laboratorios = client.getLaboratorios();
            return laboratorios;
        }
        private void EncontrarInformacion(string CUI)
        {
            Service1Client serviceClient = new Service1Client();
            String[] datos = serviceClient.tomarInformacion(CUI);

            if (datos != null && datos.Length >= 3)
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
        protected void btnRegistrarAlumno(object sender, EventArgs e)
        {
            // Obtener los datos del alumno a registrar
            string cui = lblCUI.Text.Substring(5); // Eliminamos el prefijo "CUI: " para obtener solo el número
            string apellidos = lblApellidos.Text;
            string nombres = lblNombres.Text;
            string grupoSeleccionado = ddlGroup.SelectedValue;

            // Llamar al servicio para registrar al alumno
            Service3Client serviceClient = new Service3Client();
            serviceClient.RegistroAlumno(cui, apellidos, nombres, grupoSeleccionado);

            string script = "alert('Registro exitoso en el grupo " + grupoSeleccionado + ".');";
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "RegistroExitoso", script, true);
        }
        protected void btnVerHorario(object sender, EventArgs e)
        {
            string grupo = lblGrupo.Text;
            if (grupo == "A")
            {
                Response.Redirect("WebForm3.aspx");
            }
            else if (grupo == "B")
            {
                Response.Redirect("WebForm4.aspx");
            }
            else if (grupo == "C")
            {
                Response.Redirect("WebForm5.aspx");
            }
            else
            {
                Response.Write("<script>alert('Grupo no válido.');</script>");
            }
        }  
    }
}