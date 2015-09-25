(library (system io unexceptional-stream-writer)
  (export new is? unexceptional-stream-writer? write flush)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.IO.UnexceptionalStreamWriter a ...)))))
  (define (is? a) (clr-is System.IO.UnexceptionalStreamWriter a))
  (define (unexceptional-stream-writer? a)
    (clr-is System.IO.UnexceptionalStreamWriter a))
  (define-method-port
    write
    System.IO.UnexceptionalStreamWriter
    Write
    (System.Void System.String)
    (System.Void System.Char[])
    (System.Void System.Char)
    (System.Void System.Char[] System.Int32 System.Int32))
  (define-method-port
    flush
    System.IO.UnexceptionalStreamWriter
    Flush
    (System.Void)))
