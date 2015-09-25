(library (system io buffered-stream)
  (export new
          is?
          buffered-stream?
          read
          read-byte
          write
          set-length
          write-byte
          seek
          flush
          can-read?
          can-write?
          can-seek?
          length
          position-get
          position-set!
          position-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.IO.BufferedStream a ...)))))
  (define (is? a) (clr-is System.IO.BufferedStream a))
  (define (buffered-stream? a) (clr-is System.IO.BufferedStream a))
  (define-method-port
    read
    System.IO.BufferedStream
    Read
    (System.Int32 System.Byte[] System.Int32 System.Int32))
  (define-method-port
    read-byte
    System.IO.BufferedStream
    ReadByte
    (System.Int32))
  (define-method-port
    write
    System.IO.BufferedStream
    Write
    (System.Void System.Byte[] System.Int32 System.Int32))
  (define-method-port
    set-length
    System.IO.BufferedStream
    SetLength
    (System.Void System.Int64))
  (define-method-port
    write-byte
    System.IO.BufferedStream
    WriteByte
    (System.Void System.Byte))
  (define-method-port
    seek
    System.IO.BufferedStream
    Seek
    (System.Int64 System.Int64 System.IO.SeekOrigin))
  (define-method-port
    flush
    System.IO.BufferedStream
    Flush
    (System.Void))
  (define-field-port
    can-read?
    #f
    #f
    (property:)
    System.IO.BufferedStream
    CanRead
    System.Boolean)
  (define-field-port
    can-write?
    #f
    #f
    (property:)
    System.IO.BufferedStream
    CanWrite
    System.Boolean)
  (define-field-port
    can-seek?
    #f
    #f
    (property:)
    System.IO.BufferedStream
    CanSeek
    System.Boolean)
  (define-field-port
    length
    #f
    #f
    (property:)
    System.IO.BufferedStream
    Length
    System.Int64)
  (define-field-port
    position-get
    position-set!
    position-update!
    (property:)
    System.IO.BufferedStream
    Position
    System.Int64))
