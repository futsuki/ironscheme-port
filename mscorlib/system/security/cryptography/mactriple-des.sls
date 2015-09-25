(library (system security cryptography mactriple-des)
  (export new
          is?
          mactriple-des?
          initialize
          padding-get
          padding-set!
          padding-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Security.Cryptography.MACTripleDES a ...)))))
  (define (is? a) (clr-is System.Security.Cryptography.MACTripleDES a))
  (define (mactriple-des? a)
    (clr-is System.Security.Cryptography.MACTripleDES a))
  (define-method-port
    initialize
    System.Security.Cryptography.MACTripleDES
    Initialize
    (System.Void))
  (define-field-port
    padding-get
    padding-set!
    padding-update!
    (property:)
    System.Security.Cryptography.MACTripleDES
    Padding
    System.Security.Cryptography.PaddingMode))
