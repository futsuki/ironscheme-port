(library (system runtime remoting activated-client-type-entry)
  (export new
          is?
          activated-client-type-entry?
          to-string
          application-url
          context-attributes-get
          context-attributes-set!
          context-attributes-update!
          object-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.ActivatedClientTypeEntry
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.ActivatedClientTypeEntry a))
  (define (activated-client-type-entry? a)
    (clr-is System.Runtime.Remoting.ActivatedClientTypeEntry a))
  (define-method-port
    to-string
    System.Runtime.Remoting.ActivatedClientTypeEntry
    ToString
    (System.String))
  (define-field-port
    application-url
    #f
    #f
    (property:)
    System.Runtime.Remoting.ActivatedClientTypeEntry
    ApplicationUrl
    System.String)
  (define-field-port
    context-attributes-get
    context-attributes-set!
    context-attributes-update!
    (property:)
    System.Runtime.Remoting.ActivatedClientTypeEntry
    ContextAttributes
    System.Runtime.Remoting.Contexts.IContextAttribute[])
  (define-field-port
    object-type
    #f
    #f
    (property:)
    System.Runtime.Remoting.ActivatedClientTypeEntry
    ObjectType
    System.Type))
