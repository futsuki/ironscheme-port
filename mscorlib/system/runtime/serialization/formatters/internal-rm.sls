(library (system runtime serialization formatters internal-rm)
  (export new is? internal-rm? soap-check-enabled? info-soap)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Serialization.Formatters.InternalRM
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Serialization.Formatters.InternalRM a))
  (define (internal-rm? a)
    (clr-is System.Runtime.Serialization.Formatters.InternalRM a))
  (define-method-port
    soap-check-enabled?
    System.Runtime.Serialization.Formatters.InternalRM
    SoapCheckEnabled
    (static: System.Boolean))
  (define-method-port
    info-soap
    System.Runtime.Serialization.Formatters.InternalRM
    InfoSoap
    (static: System.Void System.Object[])))
