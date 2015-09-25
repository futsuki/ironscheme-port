(library (system io memory-stream)
  (export new
          is?
          memory-stream?
          read
          read-byte
          get-buffer
          write
          write-to
          set-length
          write-byte
          seek
          flush
          to-array
          can-read?
          can-seek?
          can-write?
          capacity-get
          capacity-set!
          capacity-update!
          length
          position-get
          position-set!
          position-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.IO.MemoryStream a ...)))))
  (define (is? a) (clr-is System.IO.MemoryStream a))
  (define (memory-stream? a) (clr-is System.IO.MemoryStream a))
  (define-method-port
    read
    System.IO.MemoryStream
    Read
    (System.Int32 System.Byte[] System.Int32 System.Int32))
  (define-method-port
    read-byte
    System.IO.MemoryStream
    ReadByte
    (System.Int32))
  (define-method-port
    get-buffer
    System.IO.MemoryStream
    GetBuffer
    (System.Byte[]))
  (define-method-port
    write
    System.IO.MemoryStream
    Write
    (System.Void System.Byte[] System.Int32 System.Int32))
  (define-method-port
    write-to
    System.IO.MemoryStream
    WriteTo
    (System.Void System.IO.Stream))
  (define-method-port
    set-length
    System.IO.MemoryStream
    SetLength
    (System.Void System.Int64))
  (define-method-port
    write-byte
    System.IO.MemoryStream
    WriteByte
    (System.Void System.Byte))
  (define-method-port
    seek
    System.IO.MemoryStream
    Seek
    (System.Int64 System.Int64 System.IO.SeekOrigin))
  (define-method-port flush System.IO.MemoryStream Flush (System.Void))
  (define-method-port
    to-array
    System.IO.MemoryStream
    ToArray
    (System.Byte[]))
  (define-field-port
    can-read?
    #f
    #f
    (property:)
    System.IO.MemoryStream
    CanRead
    System.Boolean)
  (define-field-port
    can-seek?
    #f
    #f
    (property:)
    System.IO.MemoryStream
    CanSeek
    System.Boolean)
  (define-field-port
    can-write?
    #f
    #f
    (property:)
    System.IO.MemoryStream
    CanWrite
    System.Boolean)
  (define-field-port
    capacity-get
    capacity-set!
    capacity-update!
    (property:)
    System.IO.MemoryStream
    Capacity
    System.Int32)
  (define-field-port
    length
    #f
    #f
    (property:)
    System.IO.MemoryStream
    Length
    System.Int64)
  (define-field-port
    position-get
    position-set!
    position-update!
    (property:)
    System.IO.MemoryStream
    Position
    System.Int64))
