(library (locale)
  (export is? locale? get-text)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Locale a))
  (define (locale? a) (clr-is Locale a))
  (define-method-port
    get-text
    Locale
    GetText
    (static: System.String System.String System.Object[])
    (static: System.String System.String)))
