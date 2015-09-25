(library (system diagnostics boolean-switch)
  (export new
          is?
          boolean-switch?
          enabled?-get
          enabled?-set!
          enabled?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Diagnostics.BooleanSwitch a ...)))))
  (define (is? a) (clr-is System.Diagnostics.BooleanSwitch a))
  (define (boolean-switch? a)
    (clr-is System.Diagnostics.BooleanSwitch a))
  (define-field-port
    enabled?-get
    enabled?-set!
    enabled?-update!
    (property:)
    System.Diagnostics.BooleanSwitch
    Enabled
    System.Boolean))
