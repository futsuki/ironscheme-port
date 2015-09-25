(library (system multicast-not-supported-exception)
  (export new is? multicast-not-supported-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.MulticastNotSupportedException a ...)))))
  (define (is? a) (clr-is System.MulticastNotSupportedException a))
  (define (multicast-not-supported-exception? a)
    (clr-is System.MulticastNotSupportedException a)))