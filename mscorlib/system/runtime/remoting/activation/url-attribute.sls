(library (system runtime remoting activation url-attribute)
  (export new
          is?
          url-attribute?
          get-hash-code
          is-context-ok?
          get-properties-for-new-context
          equals?
          url-value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Activation.UrlAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Activation.UrlAttribute a))
  (define (url-attribute? a)
    (clr-is System.Runtime.Remoting.Activation.UrlAttribute a))
  (define-method-port
    get-hash-code
    System.Runtime.Remoting.Activation.UrlAttribute
    GetHashCode
    (System.Int32))
  (define-method-port
    is-context-ok?
    System.Runtime.Remoting.Activation.UrlAttribute
    IsContextOK
    (System.Boolean
      System.Runtime.Remoting.Contexts.Context
      System.Runtime.Remoting.Activation.IConstructionCallMessage))
  (define-method-port
    get-properties-for-new-context
    System.Runtime.Remoting.Activation.UrlAttribute
    GetPropertiesForNewContext
    (System.Void
      System.Runtime.Remoting.Activation.IConstructionCallMessage))
  (define-method-port
    equals?
    System.Runtime.Remoting.Activation.UrlAttribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    url-value
    #f
    #f
    (property:)
    System.Runtime.Remoting.Activation.UrlAttribute
    UrlValue
    System.String))
