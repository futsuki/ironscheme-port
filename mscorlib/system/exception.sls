(library (system exception)
  (export new
          is?
          exception?
          get-type
          get-object-data
          get-base-exception
          to-string
          inner-exception
          help-link-get
          help-link-set!
          help-link-update!
          message
          source-get
          source-set!
          source-update!
          stack-trace
          target-site
          data)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Exception a ...)))))
  (define (is? a) (clr-is System.Exception a))
  (define (exception? a) (clr-is System.Exception a))
  (define-method-port get-type System.Exception GetType (System.Type))
  (define-method-port
    get-object-data
    System.Exception
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    get-base-exception
    System.Exception
    GetBaseException
    (System.Exception))
  (define-method-port
    to-string
    System.Exception
    ToString
    (System.String))
  (define-field-port
    inner-exception
    #f
    #f
    (property:)
    System.Exception
    InnerException
    System.Exception)
  (define-field-port
    help-link-get
    help-link-set!
    help-link-update!
    (property:)
    System.Exception
    HelpLink
    System.String)
  (define-field-port
    message
    #f
    #f
    (property:)
    System.Exception
    Message
    System.String)
  (define-field-port
    source-get
    source-set!
    source-update!
    (property:)
    System.Exception
    Source
    System.String)
  (define-field-port
    stack-trace
    #f
    #f
    (property:)
    System.Exception
    StackTrace
    System.String)
  (define-field-port
    target-site
    #f
    #f
    (property:)
    System.Exception
    TargetSite
    System.Reflection.MethodBase)
  (define-field-port
    data
    #f
    #f
    (property:)
    System.Exception
    Data
    System.Collections.IDictionary))
