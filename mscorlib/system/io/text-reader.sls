(library (system io text-reader)
  (export is?
          text-reader?
          read
          dispose
          read-line
          read-to-end
          read-block
          peek
          synchronized
          close
          null)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.IO.TextReader a))
  (define (text-reader? a) (clr-is System.IO.TextReader a))
  (define-method-port
    read
    System.IO.TextReader
    Read
    (System.Int32 System.Char[] System.Int32 System.Int32)
    (System.Int32))
  (define-method-port
    dispose
    System.IO.TextReader
    Dispose
    (System.Void))
  (define-method-port
    read-line
    System.IO.TextReader
    ReadLine
    (System.String))
  (define-method-port
    read-to-end
    System.IO.TextReader
    ReadToEnd
    (System.String))
  (define-method-port
    read-block
    System.IO.TextReader
    ReadBlock
    (System.Int32 System.Char[] System.Int32 System.Int32))
  (define-method-port peek System.IO.TextReader Peek (System.Int32))
  (define-method-port
    synchronized
    System.IO.TextReader
    Synchronized
    (static: System.IO.TextReader System.IO.TextReader))
  (define-method-port close System.IO.TextReader Close (System.Void))
  (define-field-port
    null
    #f
    #f
    (static:)
    System.IO.TextReader
    Null
    System.IO.TextReader))
