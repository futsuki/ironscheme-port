(library (system diagnostics debugger-display-attribute)
  (export new
          is?
          debugger-display-attribute?
          value
          target-get
          target-set!
          target-update!
          target-type-name-get
          target-type-name-set!
          target-type-name-update!
          type-get
          type-set!
          type-update!
          name-get
          name-set!
          name-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Diagnostics.DebuggerDisplayAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Diagnostics.DebuggerDisplayAttribute a))
  (define (debugger-display-attribute? a)
    (clr-is System.Diagnostics.DebuggerDisplayAttribute a))
  (define-field-port
    value
    #f
    #f
    (property:)
    System.Diagnostics.DebuggerDisplayAttribute
    Value
    System.String)
  (define-field-port
    target-get
    target-set!
    target-update!
    (property:)
    System.Diagnostics.DebuggerDisplayAttribute
    Target
    System.Type)
  (define-field-port
    target-type-name-get
    target-type-name-set!
    target-type-name-update!
    (property:)
    System.Diagnostics.DebuggerDisplayAttribute
    TargetTypeName
    System.String)
  (define-field-port
    type-get
    type-set!
    type-update!
    (property:)
    System.Diagnostics.DebuggerDisplayAttribute
    Type
    System.String)
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    System.Diagnostics.DebuggerDisplayAttribute
    Name
    System.String))
