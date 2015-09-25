(library (system runtime serialization formatters soap-message)
  (export new
          is?
          soap-message?
          headers-get
          headers-set!
          headers-update!
          method-name-get
          method-name-set!
          method-name-update!
          param-names-get
          param-names-set!
          param-names-update!
          param-types-get
          param-types-set!
          param-types-update!
          param-values-get
          param-values-set!
          param-values-update!
          xml-name-space-get
          xml-name-space-set!
          xml-name-space-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Serialization.Formatters.SoapMessage
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Serialization.Formatters.SoapMessage a))
  (define (soap-message? a)
    (clr-is System.Runtime.Serialization.Formatters.SoapMessage a))
  (define-field-port
    headers-get
    headers-set!
    headers-update!
    (property:)
    System.Runtime.Serialization.Formatters.SoapMessage
    Headers
    System.Runtime.Remoting.Messaging.Header[])
  (define-field-port
    method-name-get
    method-name-set!
    method-name-update!
    (property:)
    System.Runtime.Serialization.Formatters.SoapMessage
    MethodName
    System.String)
  (define-field-port
    param-names-get
    param-names-set!
    param-names-update!
    (property:)
    System.Runtime.Serialization.Formatters.SoapMessage
    ParamNames
    System.String[])
  (define-field-port
    param-types-get
    param-types-set!
    param-types-update!
    (property:)
    System.Runtime.Serialization.Formatters.SoapMessage
    ParamTypes
    System.Type[])
  (define-field-port
    param-values-get
    param-values-set!
    param-values-update!
    (property:)
    System.Runtime.Serialization.Formatters.SoapMessage
    ParamValues
    System.Object[])
  (define-field-port
    xml-name-space-get
    xml-name-space-set!
    xml-name-space-update!
    (property:)
    System.Runtime.Serialization.Formatters.SoapMessage
    XmlNameSpace
    System.String))
