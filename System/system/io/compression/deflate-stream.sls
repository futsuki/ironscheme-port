(library (system io compression deflate-stream)
  (export new
          is?
          deflate-stream?
          read
          end-write
          write
          begin-write
          set-length
          end-read
          begin-read
          seek
          flush
          base-stream
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
        ((_ a ...)
         #'(clr-new System.IO.Compression.DeflateStream a ...)))))
  (define (is? a) (clr-is System.IO.Compression.DeflateStream a))
  (define (deflate-stream? a)
    (clr-is System.IO.Compression.DeflateStream a))
  (define-method-port
    read
    System.IO.Compression.DeflateStream
    Read
    (System.Int32 System.Byte[] System.Int32 System.Int32))
  (define-method-port
    end-write
    System.IO.Compression.DeflateStream
    EndWrite
    (System.Void System.IAsyncResult))
  (define-method-port
    write
    System.IO.Compression.DeflateStream
    Write
    (System.Void System.Byte[] System.Int32 System.Int32))
  (define-method-port
    begin-write
    System.IO.Compression.DeflateStream
    BeginWrite
    (System.IAsyncResult
      System.Byte[]
      System.Int32
      System.Int32
      System.AsyncCallback
      System.Object))
  (define-method-port
    set-length
    System.IO.Compression.DeflateStream
    SetLength
    (System.Void System.Int64))
  (define-method-port
    end-read
    System.IO.Compression.DeflateStream
    EndRead
    (System.Int32 System.IAsyncResult))
  (define-method-port
    begin-read
    System.IO.Compression.DeflateStream
    BeginRead
    (System.IAsyncResult
      System.Byte[]
      System.Int32
      System.Int32
      System.AsyncCallback
      System.Object))
  (define-method-port
    seek
    System.IO.Compression.DeflateStream
    Seek
    (System.Int64 System.Int64 System.IO.SeekOrigin))
  (define-method-port
    flush
    System.IO.Compression.DeflateStream
    Flush
    (System.Void))
  (define-field-port
    base-stream
    #f
    #f
    (property:)
    System.IO.Compression.DeflateStream
    BaseStream
    System.IO.Stream)
  (define-field-port
    can-read?
    #f
    #f
    (property:)
    System.IO.Compression.DeflateStream
    CanRead
    System.Boolean)
  (define-field-port
    can-seek?
    #f
    #f
    (property:)
    System.IO.Compression.DeflateStream
    CanSeek
    System.Boolean)
  (define-field-port
    can-write?
    #f
    #f
    (property:)
    System.IO.Compression.DeflateStream
    CanWrite
    System.Boolean)
  (define-field-port
    length
    #f
    #f
    (property:)
    System.IO.Compression.DeflateStream
    Length
    System.Int64)
  (define-field-port
    position-get
    position-set!
    position-update!
    (property:)
    System.IO.Compression.DeflateStream
    Position
    System.Int64))
