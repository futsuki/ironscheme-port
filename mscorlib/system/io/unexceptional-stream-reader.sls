(library (system io unexceptional-stream-reader)
  (export new
          is?
          unexceptional-stream-reader?
          read
          read-line
          read-to-end
          peek)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.IO.UnexceptionalStreamReader a ...)))))
  (define (is? a) (clr-is System.IO.UnexceptionalStreamReader a))
  (define (unexceptional-stream-reader? a)
    (clr-is System.IO.UnexceptionalStreamReader a))
  (define-method-port
    read
    System.IO.UnexceptionalStreamReader
    Read
    (System.Int32 System.Char[] System.Int32 System.Int32)
    (System.Int32))
  (define-method-port
    read-line
    System.IO.UnexceptionalStreamReader
    ReadLine
    (System.String))
  (define-method-port
    read-to-end
    System.IO.UnexceptionalStreamReader
    ReadToEnd
    (System.String))
  (define-method-port
    peek
    System.IO.UnexceptionalStreamReader
    Peek
    (System.Int32)))
