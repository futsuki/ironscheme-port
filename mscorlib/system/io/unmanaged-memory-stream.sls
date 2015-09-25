(library (system io unmanaged-memory-stream)
  (export new
          is?
          unmanaged-memory-stream?
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
          capacity
          length
          position-get
          position-set!
          position-update!
          position-pointer-get
          position-pointer-set!
          position-pointer-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.IO.UnmanagedMemoryStream a ...)))))
  (define (is? a) (clr-is System.IO.UnmanagedMemoryStream a))
  (define (unmanaged-memory-stream? a)
    (clr-is System.IO.UnmanagedMemoryStream a))
  (define-method-port
    read
    System.IO.UnmanagedMemoryStream
    Read
    (System.Int32 System.Byte[] System.Int32 System.Int32))
  (define-method-port
    read-byte
    System.IO.UnmanagedMemoryStream
    ReadByte
    (System.Int32))
  (define-method-port
    write
    System.IO.UnmanagedMemoryStream
    Write
    (System.Void System.Byte[] System.Int32 System.Int32))
  (define-method-port
    set-length
    System.IO.UnmanagedMemoryStream
    SetLength
    (System.Void System.Int64))
  (define-method-port
    write-byte
    System.IO.UnmanagedMemoryStream
    WriteByte
    (System.Void System.Byte))
  (define-method-port
    seek
    System.IO.UnmanagedMemoryStream
    Seek
    (System.Int64 System.Int64 System.IO.SeekOrigin))
  (define-method-port
    flush
    System.IO.UnmanagedMemoryStream
    Flush
    (System.Void))
  (define-field-port
    can-read?
    #f
    #f
    (property:)
    System.IO.UnmanagedMemoryStream
    CanRead
    System.Boolean)
  (define-field-port
    can-seek?
    #f
    #f
    (property:)
    System.IO.UnmanagedMemoryStream
    CanSeek
    System.Boolean)
  (define-field-port
    can-write?
    #f
    #f
    (property:)
    System.IO.UnmanagedMemoryStream
    CanWrite
    System.Boolean)
  (define-field-port
    capacity
    #f
    #f
    (property:)
    System.IO.UnmanagedMemoryStream
    Capacity
    System.Int64)
  (define-field-port
    length
    #f
    #f
    (property:)
    System.IO.UnmanagedMemoryStream
    Length
    System.Int64)
  (define-field-port
    position-get
    position-set!
    position-update!
    (property:)
    System.IO.UnmanagedMemoryStream
    Position
    System.Int64)
  (define-field-port
    position-pointer-get
    position-pointer-set!
    position-pointer-update!
    (property:)
    System.IO.UnmanagedMemoryStream
    PositionPointer
    System.Byte*))
