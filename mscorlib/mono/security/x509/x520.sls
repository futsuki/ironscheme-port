(library (mono security x509 x520)
  (export new is? x520?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Security.X509.X520 a ...)))))
  (define (is? a) (clr-is Mono.Security.X509.X520 a))
  (define (x520? a) (clr-is Mono.Security.X509.X520 a)))
