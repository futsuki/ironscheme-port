(library (system diagnostics debugger)
  (export new
          is?
          debugger?
          log
          launch?
          break
          is-logging?
          default-category
          is-attached?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Diagnostics.Debugger a ...)))))
  (define (is? a) (clr-is System.Diagnostics.Debugger a))
  (define (debugger? a) (clr-is System.Diagnostics.Debugger a))
  (define-method-port
    log
    System.Diagnostics.Debugger
    Log
    (static: System.Void System.Int32 System.String System.String))
  (define-method-port
    launch?
    System.Diagnostics.Debugger
    Launch
    (static: System.Boolean))
  (define-method-port
    break
    System.Diagnostics.Debugger
    Break
    (static: System.Void))
  (define-method-port
    is-logging?
    System.Diagnostics.Debugger
    IsLogging
    (static: System.Boolean))
  (define-field-port
    default-category
    #f
    #f
    (static:)
    System.Diagnostics.Debugger
    DefaultCategory
    System.String)
  (define-field-port
    is-attached?
    #f
    #f
    (static: property:)
    System.Diagnostics.Debugger
    IsAttached
    System.Boolean))
