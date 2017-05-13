/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clinicaHipocrates;

import javax.ejb.Stateless;
import javax.jws.WebService;

/**
 *
 * @author cortuzar
 */
@WebService(serviceName = "Service", portName = "BasicHttpBinding_IService", endpointInterface = "org.tempuri.IService", targetNamespace = "http://tempuri.org/", wsdlLocation = "META-INF/wsdl/NewWebServiceFromWSDL/localhost_3513/Service.svc.wsdl")
@Stateless
public class NewWebServiceFromWSDL {

    public java.lang.String insertarUsuario(java.lang.Integer rut, java.lang.String nombre, java.lang.String paterno, java.lang.String materno, java.lang.String telPersonal, java.lang.String telTrabajo, java.lang.String anexo, java.lang.String mail, java.lang.String password, java.lang.Integer tipoUsuario, java.lang.String recepcionista) {
        //TODO implement this method
        throw new UnsupportedOperationException("Not implemented yet.");
    }

    public java.lang.String actualizarUsuario(java.lang.Integer rut, java.lang.String nombre, java.lang.String paterno, java.lang.String materno, java.lang.String telPersonal, java.lang.String telTrabajo, java.lang.String anexo, java.lang.String mail, java.lang.String password, java.lang.Integer tipoUsuario, java.lang.String recepcionista) {
        //TODO implement this method
        throw new UnsupportedOperationException("Not implemented yet.");
    }

    public com.microsoft.schemas._2003._10.serialization.arrays.ArrayOfstring listarUsuarios() {
        //TODO implement this method
        throw new UnsupportedOperationException("Not implemented yet.");
    }

    public java.lang.String eliminarUsuario(java.lang.Integer rut) {
        //TODO implement this method
        throw new UnsupportedOperationException("Not implemented yet.");
    }

    public java.lang.String loginUsuario(java.lang.Integer rut, java.lang.String password) {
        //TODO implement this method
        throw new UnsupportedOperationException("Not implemented yet.");
    }

    public org.datacontract.schemas._2004._07.CompositeType getDataUsingDataContract(org.datacontract.schemas._2004._07.CompositeType composite) {
        //TODO implement this method
        throw new UnsupportedOperationException("Not implemented yet.");
    }
    
}
