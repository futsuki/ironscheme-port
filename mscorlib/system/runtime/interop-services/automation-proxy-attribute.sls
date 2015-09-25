(library (system runtime interop-services automation-proxy-attribute)
  (export new is? automation-proxy-attribute? value?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.AutomationProxyAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.InteropServices.AutomationProxyAttribute a))
  (define (automation-proxy-attribute? a)
    (clr-is System.Runtime.InteropServices.AutomationProxyAttribute a))
  (define-field-port
    value?
    #f
    #f
    (property:)
    System.Runtime.InteropServices.AutomationProxyAttribute
    Value
    System.Boolean))
