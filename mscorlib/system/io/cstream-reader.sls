(library (system io cstream-reader)
  (export new is? cstream-reader? read read-line read-to-end peek)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.IO.CStreamReader a ...)))))
  (define (is? a) (clr-is System.IO.CStreamReader a))
  (define (cstream-reader? a) (clr-is System.IO.CStreamReader a))
  (define-method-port
    read
    System.IO.CStreamReader
    Read
    (System.Int32 System.Char[] System.Int32 System.Int32)
    (System.Int32))
  (define-method-port
    read-line
    System.IO.CStreamReader
    ReadLine
    (System.String))
  (define-method-port
    read-to-end
    System.IO.CStreamReader
    ReadToEnd
    (System.String))
  (define-method-port peek System.IO.CStreamReader Peek (System.Int32)))
