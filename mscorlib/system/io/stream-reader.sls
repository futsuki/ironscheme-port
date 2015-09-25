(library (system io stream-reader)
  (export new
          is?
          stream-reader?
          read
          discard-buffered-data
          read-line
          read-to-end
          peek
          close
          null
          base-stream
          current-encoding
          end-of-stream?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.IO.StreamReader a ...)))))
  (define (is? a) (clr-is System.IO.StreamReader a))
  (define (stream-reader? a) (clr-is System.IO.StreamReader a))
  (define-method-port
    read
    System.IO.StreamReader
    Read
    (System.Int32 System.Char[] System.Int32 System.Int32)
    (System.Int32))
  (define-method-port
    discard-buffered-data
    System.IO.StreamReader
    DiscardBufferedData
    (System.Void))
  (define-method-port
    read-line
    System.IO.StreamReader
    ReadLine
    (System.String))
  (define-method-port
    read-to-end
    System.IO.StreamReader
    ReadToEnd
    (System.String))
  (define-method-port peek System.IO.StreamReader Peek (System.Int32))
  (define-method-port close System.IO.StreamReader Close (System.Void))
  (define-field-port
    null
    #f
    #f
    (static:)
    System.IO.StreamReader
    Null
    System.IO.StreamReader)
  (define-field-port
    base-stream
    #f
    #f
    (property:)
    System.IO.StreamReader
    BaseStream
    System.IO.Stream)
  (define-field-port
    current-encoding
    #f
    #f
    (property:)
    System.IO.StreamReader
    CurrentEncoding
    System.Text.Encoding)
  (define-field-port
    end-of-stream?
    #f
    #f
    (property:)
    System.IO.StreamReader
    EndOfStream
    System.Boolean))
