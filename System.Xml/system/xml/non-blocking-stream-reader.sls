(library (system xml non-blocking-stream-reader)
  (export new
          is?
          non-blocking-stream-reader?
          read
          discard-buffered-data
          read-line
          read-to-end
          peek
          close
          encoding)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.NonBlockingStreamReader a ...)))))
  (define (is? a) (clr-is System.Xml.NonBlockingStreamReader a))
  (define (non-blocking-stream-reader? a)
    (clr-is System.Xml.NonBlockingStreamReader a))
  (define-method-port
    read
    System.Xml.NonBlockingStreamReader
    Read
    (System.Int32 System.Char[] System.Int32 System.Int32)
    (System.Int32))
  (define-method-port
    discard-buffered-data
    System.Xml.NonBlockingStreamReader
    DiscardBufferedData
    (System.Void))
  (define-method-port
    read-line
    System.Xml.NonBlockingStreamReader
    ReadLine
    (System.String))
  (define-method-port
    read-to-end
    System.Xml.NonBlockingStreamReader
    ReadToEnd
    (System.String))
  (define-method-port
    peek
    System.Xml.NonBlockingStreamReader
    Peek
    (System.Int32))
  (define-method-port
    close
    System.Xml.NonBlockingStreamReader
    Close
    (System.Void))
  (define-field-port
    encoding
    #f
    #f
    (property:)
    System.Xml.NonBlockingStreamReader
    Encoding
    System.Text.Encoding))
