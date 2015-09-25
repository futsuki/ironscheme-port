(library (system globalization bootstring)
  (export new is? bootstring? decode encode)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Globalization.Bootstring a ...)))))
  (define (is? a) (clr-is System.Globalization.Bootstring a))
  (define (bootstring? a) (clr-is System.Globalization.Bootstring a))
  (define-method-port
    decode
    System.Globalization.Bootstring
    Decode
    (System.String System.String System.Int32))
  (define-method-port
    encode
    System.Globalization.Bootstring
    Encode
    (System.String System.String System.Int32)))
