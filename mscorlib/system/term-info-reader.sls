(library (system term-info-reader)
  (export new is? term-info-reader? get-string-bytes get)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.TermInfoReader a ...)))))
  (define (is? a) (clr-is System.TermInfoReader a))
  (define (term-info-reader? a) (clr-is System.TermInfoReader a))
  (define-method-port
    get-string-bytes
    System.TermInfoReader
    GetStringBytes
    (System.Byte[] System.TermInfoStrings))
  (define-method-port
    get
    System.TermInfoReader
    Get
    (System.String System.TermInfoStrings)
    (System.Int32 System.TermInfoNumbers)
    (System.Boolean System.TermInfoBooleans)))
