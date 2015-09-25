(library (system io null-stream)
  (export new
          is?
          null-stream?
          read
          read-byte
          write
          set-length
          write-byte
          seek
          flush
          can-read?
          can-seek?
          can-write?
          length
          position-get
          position-set!
          position-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.IO.NullStream a ...)))))
  (define (is? a) (clr-is System.IO.NullStream a))
  (define (null-stream? a) (clr-is System.IO.NullStream a))
  (define-method-port
    read
    System.IO.NullStream
    Read
    (System.Int32 System.Byte[] System.Int32 System.Int32))
  (define-method-port
    read-byte
    System.IO.NullStream
    ReadByte
    (System.Int32))
  (define-method-port
    write
    System.IO.NullStream
    Write
    (System.Void System.Byte[] System.Int32 System.Int32))
  (define-method-port
    set-length
    System.IO.NullStream
    SetLength
    (System.Void System.Int64))
  (define-method-port
    write-byte
    System.IO.NullStream
    WriteByte
    (System.Void System.Byte))
  (define-method-port
    seek
    System.IO.NullStream
    Seek
    (System.Int64 System.Int64 System.IO.SeekOrigin))
  (define-method-port flush System.IO.NullStream Flush (System.Void))
  (define-field-port
    can-read?
    #f
    #f
    (property:)
    System.IO.NullStream
    CanRead
    System.Boolean)
  (define-field-port
    can-seek?
    #f
    #f
    (property:)
    System.IO.NullStream
    CanSeek
    System.Boolean)
  (define-field-port
    can-write?
    #f
    #f
    (property:)
    System.IO.NullStream
    CanWrite
    System.Boolean)
  (define-field-port
    length
    #f
    #f
    (property:)
    System.IO.NullStream
    Length
    System.Int64)
  (define-field-port
    position-get
    position-set!
    position-update!
    (property:)
    System.IO.NullStream
    Position
    System.Int64))
