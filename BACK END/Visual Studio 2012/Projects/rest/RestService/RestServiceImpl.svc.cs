﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Web.Script.Serialization;
namespace RestService
{
    public class RestServiceImpl : IRestServiceImpl
    {
        #region IRestServiceImpl Members

        public string XMLData(string id)
        {
            return "You requested product " + id;
        }

        public string JSONData(string id)
        {
            return "You requested product " + id;
        }

        public List<String> listarUsuarios()
        {
            var instancia = new Helper();
            string conexion = instancia.getStringConexion();
            List<String> columnData = new List<String>();

            using (SqlConnection connection = new SqlConnection(conexion))
            {
                connection.Open();
                string query = "select * from [dbo].[tblUsuario]";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            columnData.Add(reader.GetString(1));
                        }
                    }
                }
            }
            JavaScriptSerializer serializer = new JavaScriptSerializer();
            return columnData;
        }


        public void insertarUsuario(int rut, string nombre, string paterno, string materno, string telPersonal, string telTrabajo, string anexo, string mail, string password, int tipoUsuario, string recepcionista)
        {


            string msg = "";
            msg = "rut inválido";
            if (Convert.ToInt16(rut) == 0 || rut.ToString().Length < 9)
            {

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
                msg = "Se produjo un error: " + ex.Message;
            }
            finally
            {

                myConnection2.Close();


            }

            
        }

        #endregion
    }
}