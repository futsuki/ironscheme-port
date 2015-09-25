(library (system runtime remoting well-known-service-type-entry)
  (export new
          is?
          well-known-service-type-entry?
          to-string
          context-attributes-get
          context-attributes-set!
          context-attributes-update!
          mode
          object-type
          object-uri)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.WellKnownServiceTypeEntry
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.WellKnownServiceTypeEntry a))
  (define (well-known-service-type-entry? a)
    (clr-is System.Runtime.Remoting.WellKnownServiceTypeEntry a))
  (define-method-port
    to-string
    System.Runtime.Remoting.WellKnownServiceTypeEntry
    ToString
    (System.String))
  (define-field-port
    context-attributes-get
    context-attributes-set!
    context-attributes-update!
    (property:)
    System.Runtime.Remoting.WellKnownServiceTypeEntry
    ContextAttributes
    System.Runtime.Remoting.Contexts.IContextAttribute[])
  (define-field-port
    mode
    #f
    #f
    (property:)
    System.Runtime.Remoting.WellKnownServiceTypeEntry
    Mode
    System.Runtime.Remoting.WellKnownObjectMode)
  (define-field-port
    object-type
    #f
    #f
    (property:)
    System.Runtime.Remoting.WellKnownServiceTypeEntry
    ObjectType
    System.Type)
  (define-field-port
    object-uri
    #f
    #f
    (property:)
    System.Runtime.Remoting.WellKnownServiceTypeEntry
    ObjectUri
    System.String))
