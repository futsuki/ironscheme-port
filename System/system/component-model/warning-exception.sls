(library (system component-model warning-exception)
  (export new
          is?
          warning-exception?
          get-object-data
          help-topic
          help-url)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.WarningException a ...)))))
  (define (is? a) (clr-is System.ComponentModel.WarningException a))
  (define (warning-exception? a)
    (clr-is System.ComponentModel.WarningException a))
  (define-method-port
    get-object-data
    System.ComponentModel.WarningException
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-field-port
    help-topic
    #f
    #f
    (property:)
    System.ComponentModel.WarningException
    HelpTopic
    System.String)
  (define-field-port
    help-url
    #f
    #f
    (property:)
    System.ComponentModel.WarningException
    HelpUrl
    System.String))
