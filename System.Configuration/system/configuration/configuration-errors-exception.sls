(library (system configuration configuration-errors-exception)
  (export new
          is?
          configuration-errors-exception?
          get-filename
          get-object-data
          get-line-number
          bare-message
          errors
          filename
          line
          message)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.ConfigurationErrorsException
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.ConfigurationErrorsException a))
  (define (configuration-errors-exception? a)
    (clr-is System.Configuration.ConfigurationErrorsException a))
  (define-method-port
    get-filename
    System.Configuration.ConfigurationErrorsException
    GetFilename
    (static: System.String System.Xml.XmlNode)
    (static: System.String System.Xml.XmlReader))
  (define-method-port
    get-object-data
    System.Configuration.ConfigurationErrorsException
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    get-line-number
    System.Configuration.ConfigurationErrorsException
    GetLineNumber
    (static: System.Int32 System.Xml.XmlNode)
    (static: System.Int32 System.Xml.XmlReader))
  (define-field-port
    bare-message
    #f
    #f
    (property:)
    System.Configuration.ConfigurationErrorsException
    BareMessage
    System.String)
  (define-field-port
    errors
    #f
    #f
    (property:)
    System.Configuration.ConfigurationErrorsException
    Errors
    System.Collections.ICollection)
  (define-field-port
    filename
    #f
    #f
    (property:)
    System.Configuration.ConfigurationErrorsException
    Filename
    System.String)
  (define-field-port
    line
    #f
    #f
    (property:)
    System.Configuration.ConfigurationErrorsException
    Line
    System.Int32)
  (define-field-port
    message
    #f
    #f
    (property:)
    System.Configuration.ConfigurationErrorsException
    Message
    System.String))
