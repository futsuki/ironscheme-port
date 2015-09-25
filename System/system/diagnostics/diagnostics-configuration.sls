(library (system diagnostics diagnostics-configuration)
  (export new is? diagnostics-configuration? settings)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Diagnostics.DiagnosticsConfiguration
             a
             ...)))))
  (define (is? a)
    (clr-is System.Diagnostics.DiagnosticsConfiguration a))
  (define (diagnostics-configuration? a)
    (clr-is System.Diagnostics.DiagnosticsConfiguration a))
  (define-field-port
    settings
    #f
    #f
    (static: property:)
    System.Diagnostics.DiagnosticsConfiguration
    Settings
    System.Collections.IDictionary))
