(library (system io string-reader)
  (export new is? string-reader? read read-line read-to-end peek close)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.IO.StringReader a ...)))))
  (define (is? a) (clr-is System.IO.StringReader a))
  (define (string-reader? a) (clr-is System.IO.StringReader a))
  (define-method-port
    read
    System.IO.StringReader
    Read
    (System.Int32 System.Char[] System.Int32 System.Int32)
    (System.Int32))
  (define-method-port
    read-line
    System.IO.StringReader
    ReadLine
    (System.String))
  (define-method-port
    read-to-end
    System.IO.StringReader
    ReadToEnd
    (System.String))
  (define-method-port peek System.IO.StringReader Peek (System.Int32))
  (define-method-port close System.IO.StringReader Close (System.Void)))
