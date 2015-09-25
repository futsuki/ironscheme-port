(library (system security policy policy-exception)
  (export new is? policy-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Security.Policy.PolicyException a ...)))))
  (define (is? a) (clr-is System.Security.Policy.PolicyException a))
  (define (policy-exception? a)
    (clr-is System.Security.Policy.PolicyException a)))
