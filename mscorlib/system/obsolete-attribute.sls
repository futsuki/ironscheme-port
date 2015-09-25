(library (system obsolete-attribute)
  (export new is? obsolete-attribute? message is-error?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.ObsoleteAttribute a ...)))))
  (define (is? a) (clr-is System.ObsoleteAttribute a))
  (define (obsolete-attribute? a) (clr-is System.ObsoleteAttribute a))
  (define-field-port
    message
    #f
    #f
    (property:)
    System.ObsoleteAttribute
    Message
    System.String)
  (define-field-port
    is-error?
    #f
    #f
    (property:)
    System.ObsoleteAttribute
    IsError
    System.Boolean))
