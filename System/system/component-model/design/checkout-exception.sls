(library (system component-model design checkout-exception)
  (export new is? checkout-exception? canceled)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.Design.CheckoutException
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.Design.CheckoutException a))
  (define (checkout-exception? a)
    (clr-is System.ComponentModel.Design.CheckoutException a))
  (define-field-port
    canceled
    #f
    #f
    (static:)
    System.ComponentModel.Design.CheckoutException
    Canceled
    System.ComponentModel.Design.CheckoutException))
