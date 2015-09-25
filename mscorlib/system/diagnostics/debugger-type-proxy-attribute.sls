(library (system diagnostics debugger-type-proxy-attribute)
  (export new
          is?
          debugger-type-proxy-attribute?
          proxy-type-name
          target-get
          target-set!
          target-update!
          target-type-name-get
          target-type-name-set!
          target-type-name-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Diagnostics.DebuggerTypeProxyAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Diagnostics.DebuggerTypeProxyAttribute a))
  (define (debugger-type-proxy-attribute? a)
    (clr-is System.Diagnostics.DebuggerTypeProxyAttribute a))
  (define-field-port
    proxy-type-name
    #f
    #f
    (property:)
    System.Diagnostics.DebuggerTypeProxyAttribute
    ProxyTypeName
    System.String)
  (define-field-port
    target-get
    target-set!
    target-update!
    (property:)
    System.Diagnostics.DebuggerTypeProxyAttribute
    Target
    System.Type)
  (define-field-port
    target-type-name-get
    target-type-name-set!
    target-type-name-update!
    (property:)
    System.Diagnostics.DebuggerTypeProxyAttribute
    TargetTypeName
    System.String))
