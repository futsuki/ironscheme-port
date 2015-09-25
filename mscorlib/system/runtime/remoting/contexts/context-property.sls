(library (system runtime remoting contexts context-property)
  (export is? context-property? name property)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Contexts.ContextProperty a))
  (define (context-property? a)
    (clr-is System.Runtime.Remoting.Contexts.ContextProperty a))
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Runtime.Remoting.Contexts.ContextProperty
    Name
    System.String)
  (define-field-port
    property
    #f
    #f
    (property:)
    System.Runtime.Remoting.Contexts.ContextProperty
    Property
    System.Object))
