(library (system application-identity)
  (export new is? application-identity? to-string code-base full-name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.ApplicationIdentity a ...)))))
  (define (is? a) (clr-is System.ApplicationIdentity a))
  (define (application-identity? a)
    (clr-is System.ApplicationIdentity a))
  (define-method-port
    to-string
    System.ApplicationIdentity
    ToString
    (System.String))
  (define-field-port
    code-base
    #f
    #f
    (property:)
    System.ApplicationIdentity
    CodeBase
    System.String)
  (define-field-port
    full-name
    #f
    #f
    (property:)
    System.ApplicationIdentity
    FullName
    System.String))
