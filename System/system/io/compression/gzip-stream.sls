(library (system io compression gzip-stream)
  (export new
          is?
          gzip-stream?
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
         #'(clr-new System.IO.Compression.GZipStream a ...)))))
  (define (is? a) (clr-is System.IO.Compression.GZipStream a))
  (define (gzip-stream? a) (clr-is System.IO.Compression.GZipStream a))
  (define-method-port
    read
    System.IO.Compression.GZipStream
    Read
    (System.Int32 System.Byte[] System.Int32 System.Int32))
  (define-method-port
    end-write
    System.IO.Compression.GZipStream
    EndWrite
    (System.Void System.IAsyncResult))
  (define-method-port
    write
    System.IO.Compression.GZipStream
    Write
    (System.Void System.Byte[] System.Int32 System.Int32))
  (define-method-port
    begin-write
    System.IO.Compression.GZipStream
    BeginWrite
    (System.IAsyncResult
      System.Byte[]
      System.Int32
      System.Int32
      System.AsyncCallback
      System.Object))
  (define-method-port
    set-length
    System.IO.Compression.GZipStream
    SetLength
    (System.Void System.Int64))
  (define-method-port
    end-read
    System.IO.Compression.GZipStream
    EndRead
    (System.Int32 System.IAsyncResult))
  (define-method-port
    begin-read
    System.IO.Compression.GZipStream
    BeginRead
    (System.IAsyncResult
      System.Byte[]
      System.Int32
      System.Int32
      System.AsyncCallback
      System.Object))
  (define-method-port
    seek
    System.IO.Compression.GZipStream
    Seek
    (System.Int64 System.Int64 System.IO.SeekOrigin))
  (define-method-port
    flush
    System.IO.Compression.GZipStream
    Flush
    (System.Void))
  (define-field-port
    base-stream
    #f
    #f
    (property:)
    System.IO.Compression.GZipStream
    BaseStream
    System.IO.Stream)
  (define-field-port
    can-read?
    #f
    #f
    (property:)
    System.IO.Compression.GZipStream
    CanRead
    System.Boolean)
  (define-field-port
    can-seek?
    #f
    #f
    (property:)
    System.IO.Compression.GZipStream
    CanSeek
    System.Boolean)
  (define-field-port
    can-write?
    #f
    #f
    (property:)
    System.IO.Compression.GZipStream
    CanWrite
    System.Boolean)
  (define-field-port
    length
    #f
    #f
    (property:)
    System.IO.Compression.GZipStream
    Length
    System.Int64)
  (define-field-port
    position-get
    position-set!
    position-update!
    (property:)
    System.IO.Compression.GZipStream
    Position
    System.Int64))
