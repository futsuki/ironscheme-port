(library (system runtime remoting activated-service-type-entry)
  (export new
          is?
          activated-service-type-entry?
          to-string
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
             System.Runtime.Remoting.ActivatedServiceTypeEntry
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.ActivatedServiceTypeEntry a))
  (define (activated-service-type-entry? a)
    (clr-is System.Runtime.Remoting.ActivatedServiceTypeEntry a))
  (define-method-port
    to-string
    System.Runtime.Remoting.ActivatedServiceTypeEntry
    ToString
    (System.String))
  (define-field-port
    context-attributes-get
    context-attributes-set!
    context-attributes-update!
    (property:)
    System.Runtime.Remoting.ActivatedServiceTypeEntry
    ContextAttributes
    System.Runtime.Remoting.Contexts.IContextAttribute[])
  (define-field-port
    object-type
    #f
    #f
    (property:)
    System.Runtime.Remoting.ActivatedServiceTypeEntry
    ObjectType
    System.Type))
