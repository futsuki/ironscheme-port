(library (system net cookie-parser)
  (export new is? cookie-parser? get-next-name-value?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.CookieParser a ...)))))
  (define (is? a) (clr-is System.Net.CookieParser a))
  (define (cookie-parser? a) (clr-is System.Net.CookieParser a))
  (define-method-port
    get-next-name-value?
    System.Net.CookieParser
    GetNextNameValue
    (System.Boolean System.String& System.String&)))
