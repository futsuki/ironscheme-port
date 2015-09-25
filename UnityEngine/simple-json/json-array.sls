(library (simple-json json-array)
  (export new is? json-array? to-string)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new SimpleJson.JsonArray a ...)))))
  (define (is? a) (clr-is SimpleJson.JsonArray a))
  (define (json-array? a) (clr-is SimpleJson.JsonArray a))
  (define-method-port
    to-string
    SimpleJson.JsonArray
    ToString
    (System.String)))
