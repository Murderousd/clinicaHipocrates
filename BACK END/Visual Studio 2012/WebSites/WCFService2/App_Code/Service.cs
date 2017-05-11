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
using System.Web.Configuration;
// NOTA: puede usar el comando "Rename" del menú "Refactorizar" para cambiar el nombre de clase "Service1" en el código, en svc y en el archivo de configuración.
public class Service : IService
{
	


    
    public string insertarUsuario(int rut, string nombre, string paterno, string materno, string telPersonal, string telTrabajo, string anexo, string mail, string password, int tipoUsuario, string recepcionista)
{
         string msg = "";
        msg = "rut inválido";
    if (Convert.ToInt16(rut) == 0|| rut.ToString().Length < 9) {

    }

    //if (nombre == "" || paterno == "" || materno == "" || telPersonal == "" || telTrabajo == "" || anexo == "" || mail == "" || password == "" || Convert.ToInt16(tipoUsuario) == "" || recepcionista == "") { 
    
    //}
    // como obtener el nombre del server, tirar esta qry en sql DESKTOP-45G0HBI\SQLEXPRESS SELECT @@SERVERNAME AS 'Server Name'  
    var instancia = new Helper();
    string conexion = instancia.getStringConexion();
       
        SqlConnection myConnection2 = new SqlConnection(conexion);


        System.Console.WriteLine(System.Configuration.ConfigurationManager.AppSettings["ConnectionString"]);
        string asdf = WebConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
         SqlCommand myCommand2 = new SqlCommand("sp_agregar_usuario", myConnection2);

         try
         {


             myConnection2.Open();

             // String KeyString = instancia.GenerateAPassKey("camiloeljefe");
              //String EncryptedPassword = instancia.Encrypt("25Characterlengthpassword!", password);
 //String DecryptedPassword = instancia.Decrypt(EncryptedPassword, KeyString);
           
            myCommand2.CommandType = CommandType.StoredProcedure;
	myCommand2.Parameters.Add("@usuario_rut", SqlDbType.BigInt).Value = rut;	
	myCommand2.Parameters.Add("@usuario_nombre", SqlDbType.NVarChar, 100).Value = nombre;	
	myCommand2.Parameters.Add("@usuario_apaterno", SqlDbType.NVarChar, 100).Value = paterno;	
	myCommand2.Parameters.Add("@usuario_amaterno", SqlDbType.NVarChar, 100).Value = materno;	
	myCommand2.Parameters.Add("@usuario_num_tel_personal", SqlDbType.NVarChar, 100).Value = telPersonal;	
	myCommand2.Parameters.Add("@usuario_num_tel_trabajo", SqlDbType.NVarChar, 100).Value = telTrabajo;	
	myCommand2.Parameters.Add("@usuario_num_anexo", SqlDbType.NVarChar, 100).Value = anexo;	
	myCommand2.Parameters.Add("@usuario_email", SqlDbType.NVarChar, 100).Value = mail;
    myCommand2.Parameters.Add("@usuario_password", SqlDbType.NVarChar, 100).Value = password;	
	myCommand2.Parameters.Add("@tblTipoUsuario_tipousuario_id", SqlDbType.BigInt).Value = tipoUsuario;	
	myCommand2.Parameters.Add("@recepcionista_usuario", SqlDbType.NVarChar, 100).Value = recepcionista;

            int rows = myCommand2.ExecuteNonQuery();
             msg = "Insertado correctamente";
             
         }
         catch (SqlException ex)
            {
                msg = "Se produjo un error: "+ex.Message;
            }
         finally
         {

                         myConnection2.Close();
                         
           
         }

         return msg;
}

    public string actualizarUsuario(int rut, string nombre, string paterno, string materno, string telPersonal, string telTrabajo, string anexo, string mail, string password, int tipoUsuario, string recepcionista)
    {
        // como obtener el nombre del server, tirar esta qry en sql DESKTOP-45G0HBI\SQLEXPRESS SELECT @@SERVERNAME AS 'Server Name'  
        var instancia = new Helper();
        string conexion = instancia.getStringConexion();
        string msg = "";
        SqlConnection myConnection2 = new SqlConnection(conexion);


        System.Console.WriteLine(System.Configuration.ConfigurationManager.AppSettings["ConnectionString"]);
        string asdf = WebConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        SqlCommand myCommand2 = new SqlCommand("sp_actualizar_usuario", myConnection2);

        try
        {


            myConnection2.Open();

            // String KeyString = instancia.GenerateAPassKey("camiloeljefe");
            //String EncryptedPassword = instancia.Encrypt("25Characterlengthpassword!", password);
            //String DecryptedPassword = instancia.Decrypt(EncryptedPassword, KeyString);

            myCommand2.CommandType = CommandType.StoredProcedure;
            myCommand2.Parameters.Add("@usuario_rut", SqlDbType.BigInt).Value = rut;
            myCommand2.Parameters.Add("@usuario_nombre", SqlDbType.NVarChar, 100).Value = nombre;
            myCommand2.Parameters.Add("@usuario_apaterno", SqlDbType.NVarChar, 100).Value = paterno;
            myCommand2.Parameters.Add("@usuario_amaterno", SqlDbType.NVarChar, 100).Value = materno;
            myCommand2.Parameters.Add("@usuario_num_tel_personal", SqlDbType.NVarChar, 100).Value = telPersonal;
            myCommand2.Parameters.Add("@usuario_num_tel_trabajo", SqlDbType.NVarChar, 100).Value = telTrabajo;
            myCommand2.Parameters.Add("@usuario_num_anexo", SqlDbType.NVarChar, 100).Value = anexo;
            myCommand2.Parameters.Add("@usuario_email", SqlDbType.NVarChar, 100).Value = mail;
            myCommand2.Parameters.Add("@usuario_password", SqlDbType.NVarChar, 100).Value = password;
            myCommand2.Parameters.Add("@tblTipoUsuario_tipousuario_id", SqlDbType.BigInt).Value = tipoUsuario;
            myCommand2.Parameters.Add("@recepcionista_usuario", SqlDbType.NVarChar, 100).Value = recepcionista;

            int rows = myCommand2.ExecuteNonQuery();
            msg = "Actualizado correctamente";

        }
        catch (SqlException ex)
        {
            msg = "Se produjo un error: " + ex.Message;
        }
        finally
        {

            myConnection2.Close();


        }

        return msg;
    }

    public string eliminarUsuario(int rut)
    {
        // como obtener el nombre del server, tirar esta qry en sql DESKTOP-45G0HBI\SQLEXPRESS SELECT @@SERVERNAME AS 'Server Name'  
        var instancia = new Helper();
        string conexion = instancia.getStringConexion();
        string msg = "";
        SqlConnection myConnection2 = new SqlConnection(conexion);


        System.Console.WriteLine(System.Configuration.ConfigurationManager.AppSettings["ConnectionString"]);
        string asdf = WebConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
        SqlCommand myCommand2 = new SqlCommand("sp_eliminar_usuario", myConnection2);

        try
        {


            myConnection2.Open();

            // String KeyString = instancia.GenerateAPassKey("camiloeljefe");
            //String EncryptedPassword = instancia.Encrypt("25Characterlengthpassword!", password);
            //String DecryptedPassword = instancia.Decrypt(EncryptedPassword, KeyString);

            myCommand2.CommandType = CommandType.StoredProcedure;
            myCommand2.Parameters.Add("@usuario_rut", SqlDbType.BigInt).Value = rut;
            int rows = myCommand2.ExecuteNonQuery();
            msg = "Eliminado correctamente";

        }
        catch (SqlException ex)
        {
            msg = "Se produjo un error: " + ex.Message;
        }
        finally
        {

            myConnection2.Close();


        }

        return msg;
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
