
package org.tempuri;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;
import com.microsoft.schemas._2003._10.serialization.arrays.ArrayOfstring;
import org.datacontract.schemas._2004._07.CompositeType;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the org.tempuri package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _InsertarUsuarioNombre_QNAME = new QName("http://tempuri.org/", "nombre");
    private final static QName _InsertarUsuarioPaterno_QNAME = new QName("http://tempuri.org/", "paterno");
    private final static QName _InsertarUsuarioMaterno_QNAME = new QName("http://tempuri.org/", "materno");
    private final static QName _InsertarUsuarioTelPersonal_QNAME = new QName("http://tempuri.org/", "telPersonal");
    private final static QName _InsertarUsuarioTelTrabajo_QNAME = new QName("http://tempuri.org/", "telTrabajo");
    private final static QName _InsertarUsuarioAnexo_QNAME = new QName("http://tempuri.org/", "anexo");
    private final static QName _InsertarUsuarioMail_QNAME = new QName("http://tempuri.org/", "mail");
    private final static QName _InsertarUsuarioPassword_QNAME = new QName("http://tempuri.org/", "password");
    private final static QName _InsertarUsuarioRecepcionista_QNAME = new QName("http://tempuri.org/", "recepcionista");
    private final static QName _InsertarUsuarioResponseInsertarUsuarioResult_QNAME = new QName("http://tempuri.org/", "insertarUsuarioResult");
    private final static QName _ActualizarUsuarioResponseActualizarUsuarioResult_QNAME = new QName("http://tempuri.org/", "actualizarUsuarioResult");
    private final static QName _ListarUsuariosResponseListarUsuariosResult_QNAME = new QName("http://tempuri.org/", "listarUsuariosResult");
    private final static QName _EliminarUsuarioResponseEliminarUsuarioResult_QNAME = new QName("http://tempuri.org/", "eliminarUsuarioResult");
    private final static QName _LoginUsuarioResponseLoginUsuarioResult_QNAME = new QName("http://tempuri.org/", "loginUsuarioResult");
    private final static QName _GetDataUsingDataContractComposite_QNAME = new QName("http://tempuri.org/", "composite");
    private final static QName _GetDataUsingDataContractResponseGetDataUsingDataContractResult_QNAME = new QName("http://tempuri.org/", "GetDataUsingDataContractResult");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: org.tempuri
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link InsertarUsuario }
     * 
     */
    public InsertarUsuario createInsertarUsuario() {
        return new InsertarUsuario();
    }

    /**
     * Create an instance of {@link InsertarUsuarioResponse }
     * 
     */
    public InsertarUsuarioResponse createInsertarUsuarioResponse() {
        return new InsertarUsuarioResponse();
    }

    /**
     * Create an instance of {@link ActualizarUsuario }
     * 
     */
    public ActualizarUsuario createActualizarUsuario() {
        return new ActualizarUsuario();
    }

    /**
     * Create an instance of {@link ActualizarUsuarioResponse }
     * 
     */
    public ActualizarUsuarioResponse createActualizarUsuarioResponse() {
        return new ActualizarUsuarioResponse();
    }

    /**
     * Create an instance of {@link ListarUsuarios }
     * 
     */
    public ListarUsuarios createListarUsuarios() {
        return new ListarUsuarios();
    }

    /**
     * Create an instance of {@link ListarUsuariosResponse }
     * 
     */
    public ListarUsuariosResponse createListarUsuariosResponse() {
        return new ListarUsuariosResponse();
    }

    /**
     * Create an instance of {@link EliminarUsuario }
     * 
     */
    public EliminarUsuario createEliminarUsuario() {
        return new EliminarUsuario();
    }

    /**
     * Create an instance of {@link EliminarUsuarioResponse }
     * 
     */
    public EliminarUsuarioResponse createEliminarUsuarioResponse() {
        return new EliminarUsuarioResponse();
    }

    /**
     * Create an instance of {@link LoginUsuario }
     * 
     */
    public LoginUsuario createLoginUsuario() {
        return new LoginUsuario();
    }

    /**
     * Create an instance of {@link LoginUsuarioResponse }
     * 
     */
    public LoginUsuarioResponse createLoginUsuarioResponse() {
        return new LoginUsuarioResponse();
    }

    /**
     * Create an instance of {@link GetDataUsingDataContract }
     * 
     */
    public GetDataUsingDataContract createGetDataUsingDataContract() {
        return new GetDataUsingDataContract();
    }

    /**
     * Create an instance of {@link GetDataUsingDataContractResponse }
     * 
     */
    public GetDataUsingDataContractResponse createGetDataUsingDataContractResponse() {
        return new GetDataUsingDataContractResponse();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "nombre", scope = InsertarUsuario.class)
    public JAXBElement<String> createInsertarUsuarioNombre(String value) {
        return new JAXBElement<String>(_InsertarUsuarioNombre_QNAME, String.class, InsertarUsuario.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "paterno", scope = InsertarUsuario.class)
    public JAXBElement<String> createInsertarUsuarioPaterno(String value) {
        return new JAXBElement<String>(_InsertarUsuarioPaterno_QNAME, String.class, InsertarUsuario.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "materno", scope = InsertarUsuario.class)
    public JAXBElement<String> createInsertarUsuarioMaterno(String value) {
        return new JAXBElement<String>(_InsertarUsuarioMaterno_QNAME, String.class, InsertarUsuario.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "telPersonal", scope = InsertarUsuario.class)
    public JAXBElement<String> createInsertarUsuarioTelPersonal(String value) {
        return new JAXBElement<String>(_InsertarUsuarioTelPersonal_QNAME, String.class, InsertarUsuario.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "telTrabajo", scope = InsertarUsuario.class)
    public JAXBElement<String> createInsertarUsuarioTelTrabajo(String value) {
        return new JAXBElement<String>(_InsertarUsuarioTelTrabajo_QNAME, String.class, InsertarUsuario.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "anexo", scope = InsertarUsuario.class)
    public JAXBElement<String> createInsertarUsuarioAnexo(String value) {
        return new JAXBElement<String>(_InsertarUsuarioAnexo_QNAME, String.class, InsertarUsuario.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "mail", scope = InsertarUsuario.class)
    public JAXBElement<String> createInsertarUsuarioMail(String value) {
        return new JAXBElement<String>(_InsertarUsuarioMail_QNAME, String.class, InsertarUsuario.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "password", scope = InsertarUsuario.class)
    public JAXBElement<String> createInsertarUsuarioPassword(String value) {
        return new JAXBElement<String>(_InsertarUsuarioPassword_QNAME, String.class, InsertarUsuario.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "recepcionista", scope = InsertarUsuario.class)
    public JAXBElement<String> createInsertarUsuarioRecepcionista(String value) {
        return new JAXBElement<String>(_InsertarUsuarioRecepcionista_QNAME, String.class, InsertarUsuario.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "insertarUsuarioResult", scope = InsertarUsuarioResponse.class)
    public JAXBElement<String> createInsertarUsuarioResponseInsertarUsuarioResult(String value) {
        return new JAXBElement<String>(_InsertarUsuarioResponseInsertarUsuarioResult_QNAME, String.class, InsertarUsuarioResponse.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "nombre", scope = ActualizarUsuario.class)
    public JAXBElement<String> createActualizarUsuarioNombre(String value) {
        return new JAXBElement<String>(_InsertarUsuarioNombre_QNAME, String.class, ActualizarUsuario.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "paterno", scope = ActualizarUsuario.class)
    public JAXBElement<String> createActualizarUsuarioPaterno(String value) {
        return new JAXBElement<String>(_InsertarUsuarioPaterno_QNAME, String.class, ActualizarUsuario.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "materno", scope = ActualizarUsuario.class)
    public JAXBElement<String> createActualizarUsuarioMaterno(String value) {
        return new JAXBElement<String>(_InsertarUsuarioMaterno_QNAME, String.class, ActualizarUsuario.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "telPersonal", scope = ActualizarUsuario.class)
    public JAXBElement<String> createActualizarUsuarioTelPersonal(String value) {
        return new JAXBElement<String>(_InsertarUsuarioTelPersonal_QNAME, String.class, ActualizarUsuario.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "telTrabajo", scope = ActualizarUsuario.class)
    public JAXBElement<String> createActualizarUsuarioTelTrabajo(String value) {
        return new JAXBElement<String>(_InsertarUsuarioTelTrabajo_QNAME, String.class, ActualizarUsuario.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "anexo", scope = ActualizarUsuario.class)
    public JAXBElement<String> createActualizarUsuarioAnexo(String value) {
        return new JAXBElement<String>(_InsertarUsuarioAnexo_QNAME, String.class, ActualizarUsuario.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "mail", scope = ActualizarUsuario.class)
    public JAXBElement<String> createActualizarUsuarioMail(String value) {
        return new JAXBElement<String>(_InsertarUsuarioMail_QNAME, String.class, ActualizarUsuario.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "password", scope = ActualizarUsuario.class)
    public JAXBElement<String> createActualizarUsuarioPassword(String value) {
        return new JAXBElement<String>(_InsertarUsuarioPassword_QNAME, String.class, ActualizarUsuario.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "recepcionista", scope = ActualizarUsuario.class)
    public JAXBElement<String> createActualizarUsuarioRecepcionista(String value) {
        return new JAXBElement<String>(_InsertarUsuarioRecepcionista_QNAME, String.class, ActualizarUsuario.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "actualizarUsuarioResult", scope = ActualizarUsuarioResponse.class)
    public JAXBElement<String> createActualizarUsuarioResponseActualizarUsuarioResult(String value) {
        return new JAXBElement<String>(_ActualizarUsuarioResponseActualizarUsuarioResult_QNAME, String.class, ActualizarUsuarioResponse.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ArrayOfstring }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "listarUsuariosResult", scope = ListarUsuariosResponse.class)
    public JAXBElement<ArrayOfstring> createListarUsuariosResponseListarUsuariosResult(ArrayOfstring value) {
        return new JAXBElement<ArrayOfstring>(_ListarUsuariosResponseListarUsuariosResult_QNAME, ArrayOfstring.class, ListarUsuariosResponse.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "eliminarUsuarioResult", scope = EliminarUsuarioResponse.class)
    public JAXBElement<String> createEliminarUsuarioResponseEliminarUsuarioResult(String value) {
        return new JAXBElement<String>(_EliminarUsuarioResponseEliminarUsuarioResult_QNAME, String.class, EliminarUsuarioResponse.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "password", scope = LoginUsuario.class)
    public JAXBElement<String> createLoginUsuarioPassword(String value) {
        return new JAXBElement<String>(_InsertarUsuarioPassword_QNAME, String.class, LoginUsuario.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link String }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "loginUsuarioResult", scope = LoginUsuarioResponse.class)
    public JAXBElement<String> createLoginUsuarioResponseLoginUsuarioResult(String value) {
        return new JAXBElement<String>(_LoginUsuarioResponseLoginUsuarioResult_QNAME, String.class, LoginUsuarioResponse.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link CompositeType }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "composite", scope = GetDataUsingDataContract.class)
    public JAXBElement<CompositeType> createGetDataUsingDataContractComposite(CompositeType value) {
        return new JAXBElement<CompositeType>(_GetDataUsingDataContractComposite_QNAME, CompositeType.class, GetDataUsingDataContract.class, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link CompositeType }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://tempuri.org/", name = "GetDataUsingDataContractResult", scope = GetDataUsingDataContractResponse.class)
    public JAXBElement<CompositeType> createGetDataUsingDataContractResponseGetDataUsingDataContractResult(CompositeType value) {
        return new JAXBElement<CompositeType>(_GetDataUsingDataContractResponseGetDataUsingDataContractResult_QNAME, CompositeType.class, GetDataUsingDataContractResponse.class, value);
    }

}
