(library (system diagnostics diagnostics-configuration-handler)
  (export new is? diagnostics-configuration-handler? create)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Diagnostics.DiagnosticsConfigurationHandler
             a
             ...)))))
  (define (is? a)
    (clr-is System.Diagnostics.DiagnosticsConfigurationHandler a))
  (define (diagnostics-configuration-handler? a)
    (clr-is System.Diagnostics.DiagnosticsConfigurationHandler a))
  (define-method-port
    create
    System.Diagnostics.DiagnosticsConfigurationHandler
    Create
    (System.Object System.Object System.Object System.Xml.XmlNode)))
