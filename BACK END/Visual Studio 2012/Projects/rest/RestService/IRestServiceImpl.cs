using System.Collections.Generic;
using System.ServiceModel;
using System.ServiceModel.Web;

namespace RestService
{
    
    [ServiceContract]
    public interface IRestServiceImpl
    {
        [OperationContract]
        [WebInvoke(Method = "GET",
            ResponseFormat = WebMessageFormat.Xml,
            BodyStyle = WebMessageBodyStyle.Wrapped,
            UriTemplate = "xml/{id}")]
        string XMLData(string id);

        /*[OperationContract]
        [WebInvoke(Method = "GET",
            ResponseFormat = WebMessageFormat.Json,
            BodyStyle = WebMessageBodyStyle.Wrapped,
            UriTemplate = "json/{id}")]
        string JSONData(string id);*/

        [OperationContract]
        [WebInvoke(Method = "GET",
            ResponseFormat = WebMessageFormat.Json,
            BodyStyle = WebMessageBodyStyle.Wrapped,
            UriTemplate = "json/listarUsuarios")]
        List<string> listarUsuarios(); //http://localhost:35798/RestServiceImpl.svc/json/listarUsuarios

        //To Insert or POST Records  
        [OperationContract]
        [WebInvoke(Method = "POST",
         UriTemplate = "/insertar/{rut}/{nombre}/{paterno}/{materno}/{telPersonal}/{telTrabajo}/{anexo}/{mail}/{password}/{tipoUsuario}/{recepcionista}", BodyStyle = WebMessageBodyStyle.Wrapped, RequestFormat = WebMessageFormat.Json, ResponseFormat = WebMessageFormat.Json)]
        void insertarUsuario(int rut, string nombre, string paterno, string materno, string telPersonal, string telTrabajo, string anexo, string mail, string password, int tipoUsuario, string recepcionista); 
    }
}