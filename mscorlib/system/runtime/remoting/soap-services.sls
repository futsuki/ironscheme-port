(library (system runtime remoting soap-services)
  (export is?
          soap-services?
          get-soap-action-from-method-base
          is-soap-action-valid-for-method-base?
          get-xml-element-for-interop-type?
          get-xml-type-for-interop-type?
          get-xml-namespace-for-method-response
          code-xml-namespace-for-clr-type-namespace
          get-interop-type-from-xml-type
          get-interop-type-from-xml-element
          register-interop-xml-element
          register-soap-action-for-method-base
          get-type-and-method-name-from-soap-action?
          register-interop-xml-type
          pre-load
          decode-xml-namespace-for-clr-type-namespace?
          get-xml-namespace-for-method-call
          is-clr-type-namespace?
          get-interop-field-type-and-name-from-xml-attribute
          get-interop-field-type-and-name-from-xml-element
          xml-ns-for-clr-type
          xml-ns-for-clr-type-with-assembly
          xml-ns-for-clr-type-with-ns
          xml-ns-for-clr-type-with-ns-and-assembly)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Runtime.Remoting.SoapServices a))
  (define (soap-services? a)
    (clr-is System.Runtime.Remoting.SoapServices a))
  (define-method-port
    get-soap-action-from-method-base
    System.Runtime.Remoting.SoapServices
    GetSoapActionFromMethodBase
    (static: System.String System.Reflection.MethodBase))
  (define-method-port
    is-soap-action-valid-for-method-base?
    System.Runtime.Remoting.SoapServices
    IsSoapActionValidForMethodBase
    (static: System.Boolean System.String System.Reflection.MethodBase))
  (define-method-port
    get-xml-element-for-interop-type?
    System.Runtime.Remoting.SoapServices
    GetXmlElementForInteropType
    (static: System.Boolean System.Type System.String& System.String&))
  (define-method-port
    get-xml-type-for-interop-type?
    System.Runtime.Remoting.SoapServices
    GetXmlTypeForInteropType
    (static: System.Boolean System.Type System.String& System.String&))
  (define-method-port
    get-xml-namespace-for-method-response
    System.Runtime.Remoting.SoapServices
    GetXmlNamespaceForMethodResponse
    (static: System.String System.Reflection.MethodBase))
  (define-method-port
    code-xml-namespace-for-clr-type-namespace
    System.Runtime.Remoting.SoapServices
    CodeXmlNamespaceForClrTypeNamespace
    (static: System.String System.String System.String))
  (define-method-port
    get-interop-type-from-xml-type
    System.Runtime.Remoting.SoapServices
    GetInteropTypeFromXmlType
    (static: System.Type System.String System.String))
  (define-method-port
    get-interop-type-from-xml-element
    System.Runtime.Remoting.SoapServices
    GetInteropTypeFromXmlElement
    (static: System.Type System.String System.String))
  (define-method-port
    register-interop-xml-element
    System.Runtime.Remoting.SoapServices
    RegisterInteropXmlElement
    (static: System.Void System.String System.String System.Type))
  (define-method-port
    register-soap-action-for-method-base
    System.Runtime.Remoting.SoapServices
    RegisterSoapActionForMethodBase
    (static: System.Void System.Reflection.MethodBase System.String)
    (static: System.Void System.Reflection.MethodBase))
  (define-method-port
    get-type-and-method-name-from-soap-action?
    System.Runtime.Remoting.SoapServices
    GetTypeAndMethodNameFromSoapAction
    (static:
      System.Boolean
      System.String
      System.String&
      System.String&))
  (define-method-port
    register-interop-xml-type
    System.Runtime.Remoting.SoapServices
    RegisterInteropXmlType
    (static: System.Void System.String System.String System.Type))
  (define-method-port
    pre-load
    System.Runtime.Remoting.SoapServices
    PreLoad
    (static: System.Void System.Type)
    (static: System.Void System.Reflection.Assembly))
  (define-method-port
    decode-xml-namespace-for-clr-type-namespace?
    System.Runtime.Remoting.SoapServices
    DecodeXmlNamespaceForClrTypeNamespace
    (static:
      System.Boolean
      System.String
      System.String&
      System.String&))
  (define-method-port
    get-xml-namespace-for-method-call
    System.Runtime.Remoting.SoapServices
    GetXmlNamespaceForMethodCall
    (static: System.String System.Reflection.MethodBase))
  (define-method-port
    is-clr-type-namespace?
    System.Runtime.Remoting.SoapServices
    IsClrTypeNamespace
    (static: System.Boolean System.String))
  (define-method-port
    get-interop-field-type-and-name-from-xml-attribute
    System.Runtime.Remoting.SoapServices
    GetInteropFieldTypeAndNameFromXmlAttribute
    (static:
      System.Void
      System.Type
      System.String
      System.String
      System.Type&
      System.String&))
  (define-method-port
    get-interop-field-type-and-name-from-xml-element
    System.Runtime.Remoting.SoapServices
    GetInteropFieldTypeAndNameFromXmlElement
    (static:
      System.Void
      System.Type
      System.String
      System.String
      System.Type&
      System.String&))
  (define-field-port
    xml-ns-for-clr-type
    #f
    #f
    (static: property:)
    System.Runtime.Remoting.SoapServices
    XmlNsForClrType
    System.String)
  (define-field-port
    xml-ns-for-clr-type-with-assembly
    #f
    #f
    (static: property:)
    System.Runtime.Remoting.SoapServices
    XmlNsForClrTypeWithAssembly
    System.String)
  (define-field-port
    xml-ns-for-clr-type-with-ns
    #f
    #f
    (static: property:)
    System.Runtime.Remoting.SoapServices
    XmlNsForClrTypeWithNs
    System.String)
  (define-field-port
    xml-ns-for-clr-type-with-ns-and-assembly
    #f
    #f
    (static: property:)
    System.Runtime.Remoting.SoapServices
    XmlNsForClrTypeWithNsAndAssembly
    System.String))
