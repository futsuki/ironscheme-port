(library (system io stream-writer)
  (export new
          is?
          stream-writer?
          write
          flush
          close
          null
          auto-flush?-get
          auto-flush?-set!
          auto-flush?-update!
          base-stream
          encoding)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.IO.StreamWriter a ...)))))
  (define (is? a) (clr-is System.IO.StreamWriter a))
  (define (stream-writer? a) (clr-is System.IO.StreamWriter a))
  (define-method-port
    write
    System.IO.StreamWriter
    Write
    (System.Void System.String)
    (System.Void System.Char[])
    (System.Void System.Char)
    (System.Void System.Char[] System.Int32 System.Int32))
  (define-method-port flush System.IO.StreamWriter Flush (System.Void))
  (define-method-port close System.IO.StreamWriter Close (System.Void))
  (define-field-port
    null
    #f
    #f
    (static:)
    System.IO.StreamWriter
    Null
    System.IO.StreamWriter)
  (define-field-port
    auto-flush?-get
    auto-flush?-set!
    auto-flush?-update!
    (property:)
    System.IO.StreamWriter
    AutoFlush
    System.Boolean)
  (define-field-port
    base-stream
    #f
    #f
    (property:)
    System.IO.StreamWriter
    BaseStream
    System.IO.Stream)
  (define-field-port
    encoding
    #f
    #f
    (property:)
    System.IO.StreamWriter
    Encoding
    System.Text.Encoding))
