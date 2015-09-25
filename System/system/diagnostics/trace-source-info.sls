(library (system diagnostics trace-source-info)
  (export new is? trace-source-info? name levels listeners)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Diagnostics.TraceSourceInfo a ...)))))
  (define (is? a) (clr-is System.Diagnostics.TraceSourceInfo a))
  (define (trace-source-info? a)
    (clr-is System.Diagnostics.TraceSourceInfo a))
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Diagnostics.TraceSourceInfo
    Name
    System.String)
  (define-field-port
    levels
    #f
    #f
    (property:)
    System.Diagnostics.TraceSourceInfo
    Levels
    System.Diagnostics.SourceLevels)
  (define-field-port
    listeners
    #f
    #f
    (property:)
    System.Diagnostics.TraceSourceInfo
    Listeners
    System.Diagnostics.TraceListenerCollection))
