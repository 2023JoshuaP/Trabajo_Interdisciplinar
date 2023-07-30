using BaseDataPruebaTI;
using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace ServicioPrueba
{
    // NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de clase "Service3" en el código, en svc y en el archivo de configuración a la vez.
    // NOTA: para iniciar el Cliente de prueba WCF para probar este servicio, seleccione Service3.svc o Service3.svc.cs en el Explorador de soluciones e inicie la depuración.
    public class Service3 : IService3
    {
        public void RegistroAlumno(string grupoSeleccionado, string cui, string apellidos, string nombres)
        {
            Registrar registrador = new Registrar();
            try
            {
                // Llamamos al método Registro de la clase Registrar
                registrador.Registro(grupoSeleccionado, cui, nombres, apellidos);
            }
            catch (ArgumentException ex)
            {
                // Manejo de errores de validación del grupo
                Console.WriteLine("Error al registrar al alumno: " + ex.Message);
            }
            catch (Exception ex)
            {
                // Manejo de otros errores
                Console.WriteLine("Error general al registrar al alumno: " + ex.Message);
            }
        }
    }
}
