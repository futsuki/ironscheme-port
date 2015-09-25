(library (system configuration configuration-exception)
  (export new
          is?
          configuration-exception?
          get-xml-node-filename
          get-xml-node-line-number
          get-object-data
          bare-message
          filename
          line
          message)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.ConfigurationException
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.ConfigurationException a))
  (define (configuration-exception? a)
    (clr-is System.Configuration.ConfigurationException a))
  (define-method-port
    get-xml-node-filename
    System.Configuration.ConfigurationException
    GetXmlNodeFilename
    (static: System.String System.Xml.XmlNode))
  (define-method-port
    get-xml-node-line-number
    System.Configuration.ConfigurationException
    GetXmlNodeLineNumber
    (static: System.Int32 System.Xml.XmlNode))
  (define-method-port
    get-object-data
    System.Configuration.ConfigurationException
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-field-port
    bare-message
    #f
    #f
    (property:)
    System.Configuration.ConfigurationException
    BareMessage
    System.String)
  (define-field-port
    filename
    #f
    #f
    (property:)
    System.Configuration.ConfigurationException
    Filename
    System.String)
  (define-field-port
    line
    #f
    #f
    (property:)
    System.Configuration.ConfigurationException
    Line
    System.Int32)
  (define-field-port
    message
    #f
    #f
    (property:)
    System.Configuration.ConfigurationException
    Message
    System.String))
