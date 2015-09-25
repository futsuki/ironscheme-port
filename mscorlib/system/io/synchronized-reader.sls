(library (system io synchronized-reader)
  (export new
          is?
          synchronized-reader?
          read-block
          read-line
          read-to-end
          peek
          read
          close)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.IO.SynchronizedReader a ...)))))
  (define (is? a) (clr-is System.IO.SynchronizedReader a))
  (define (synchronized-reader? a)
    (clr-is System.IO.SynchronizedReader a))
  (define-method-port
    read-block
    System.IO.SynchronizedReader
    ReadBlock
    (System.Int32 System.Char[] System.Int32 System.Int32))
  (define-method-port
    read-line
    System.IO.SynchronizedReader
    ReadLine
    (System.String))
  (define-method-port
    read-to-end
    System.IO.SynchronizedReader
    ReadToEnd
    (System.String))
  (define-method-port
    peek
    System.IO.SynchronizedReader
    Peek
    (System.Int32))
  (define-method-port
    read
    System.IO.SynchronizedReader
    Read
    (System.Int32 System.Char[] System.Int32 System.Int32)
    (System.Int32))
  (define-method-port
    close
    System.IO.SynchronizedReader
    Close
    (System.Void)))
