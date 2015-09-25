(library (system configuration key-value-internal-collection)
  (export new is? key-value-internal-collection? set-read-only add)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.KeyValueInternalCollection
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.KeyValueInternalCollection a))
  (define (key-value-internal-collection? a)
    (clr-is System.Configuration.KeyValueInternalCollection a))
  (define-method-port
    set-read-only
    System.Configuration.KeyValueInternalCollection
    SetReadOnly
    (System.Void))
  (define-method-port
    add
    System.Configuration.KeyValueInternalCollection
    Add
    (System.Void System.String System.String)))
