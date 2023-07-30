using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

namespace BaseDataPruebaTI
{
    public class Registrar
    {
        private const string connectionString = "Data Source=(localdb)\\ProjectModels;Initial Catalog=PruebaTIDataBase;Integrated Security=True;";
        public void Registro(string grupoSeleccionado, string apellidos, string nombres, string cui)
        {
            string grupo = grupoSeleccionado.Replace("Laboratorio ", "").Trim();

            if (!Regex.IsMatch(grupo, "^[A-D]$"))
            {
                throw new ArgumentException("El grupo proporcionado no es válido.");
            }

            string tabla = "Laboratorio_Grupo_" + grupo;
            string query = "INSERT INTO " + tabla + " (Nombres, Apellidos, CUI) VALUES (@nombres, @apellidos, @cui)";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@nombres", nombres);
                command.Parameters.AddWithValue("@nombres", apellidos);
                command.Parameters.AddWithValue("@nombres", cui);
            }
        }
    }
}
