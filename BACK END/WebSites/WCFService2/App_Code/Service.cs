using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
// NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de clase "Service1" en el código, en svc y en el archivo de configuración.
public class Service : IService
{
	public string GetData(int value)
	{
		return string.Format("You entered: {0}", value);
	}


    public string insertarUsuario()
{

        
         SqlConnection myConnection2 = new SqlConnection(ConfigurationManager.ConnectionStrings["Data Source=DESKTOP-45G0HBI\SQLEXPRESS;" +
"Initial Catalog=DBHIPOCRATES;" +
"User id=DESKTOP-45G0HBI\cortuzar;" +
"Password=;"].ConnectionString);
         SqlCommand myCommand2 = new SqlCommand("sp_agregar_usuario", myConnection2);

         try
         {
		 
		 
		 

            myConnection2.Open();
            myCommand2.CommandType = CommandType.StoredProcedure;
	myCommand2.Parameters.Add("@usuario_rut", SqlDbType.BigInt).Value = 166485605;	
	myCommand2.Parameters.Add("@usuario_nombre", SqlDbType.NVarChar, 100).Value = "test";	
	myCommand2.Parameters.Add("@usuario_apaterno", SqlDbType.NVarChar, 100).Value = "test";	
	myCommand2.Parameters.Add("@usuario_amaterno", SqlDbType.NVarChar, 100).Value = "test";	
	myCommand2.Parameters.Add("@usuario_num_tel_personal", SqlDbType.NVarChar, 100).Value = "test";	
	myCommand2.Parameters.Add("@usuario_num_tel_trabajo", SqlDbType.NVarChar, 100).Value = "test";	
	myCommand2.Parameters.Add("@usuario_num_anexo", SqlDbType.NVarChar, 100).Value = "test";	
	myCommand2.Parameters.Add("@usuario_email", SqlDbType.NVarChar, 100).Value = "test";	
	myCommand2.Parameters.Add("@usuario_password", SqlDbType.NVarChar, 100).Value = "test";	
	myCommand2.Parameters.Add("@tblTipoUsuario_tipousuario_id", SqlDbType.BigInt).Value = 2;	
	myCommand2.Parameters.Add("@recepcionista_usuario", SqlDbType.NVarChar, 100).Value = "test";

            int rows = myCommand2.ExecuteNonQuery();

             
         }
		     catch (SqlException)
            {
                return "se produjo un error";
            }
         finally
         {
             return "insertado correctamente";
            myConnection2.Close();
         }
}
	public CompositeType GetDataUsingDataContract(CompositeType composite)
	{
		if (composite == null)
		{
			throw new ArgumentNullException("composite");
		}
		if (composite.BoolValue)
		{
			composite.StringValue += "Suffix";
		}
		return composite;
	}
}
