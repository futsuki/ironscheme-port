(library (system net web-connection-stream)
  (export new
          is?
          web-connection-stream?
          read
          end-write
          write
          begin-write
          set-length
          end-read
          begin-read
          seek
          flush
          close
          can-timeout?
          read-timeout-get
          read-timeout-set!
          read-timeout-update!
          write-timeout-get
          write-timeout-set!
          write-timeout-update!
          can-seek?
          can-read?
          can-write?
          length
          position-get
          position-set!
          position-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.WebConnectionStream a ...)))))
  (define (is? a) (clr-is System.Net.WebConnectionStream a))
  (define (web-connection-stream? a)
    (clr-is System.Net.WebConnectionStream a))
  (define-method-port
    read
    System.Net.WebConnectionStream
    Read
    (System.Int32 System.Byte[] System.Int32 System.Int32))
  (define-method-port
    end-write
    System.Net.WebConnectionStream
    EndWrite
    (System.Void System.IAsyncResult))
  (define-method-port
    write
    System.Net.WebConnectionStream
    Write
    (System.Void System.Byte[] System.Int32 System.Int32))
  (define-method-port
    begin-write
    System.Net.WebConnectionStream
    BeginWrite
    (System.IAsyncResult
      System.Byte[]
      System.Int32
      System.Int32
      System.AsyncCallback
      System.Object))
  (define-method-port
    set-length
    System.Net.WebConnectionStream
    SetLength
    (System.Void System.Int64))
  (define-method-port
    end-read
    System.Net.WebConnectionStream
    EndRead
    (System.Int32 System.IAsyncResult))
  (define-method-port
    begin-read
    System.Net.WebConnectionStream
    BeginRead
    (System.IAsyncResult
      System.Byte[]
      System.Int32
      System.Int32
      System.AsyncCallback
      System.Object))
  (define-method-port
    seek
    System.Net.WebConnectionStream
    Seek
    (System.Int64 System.Int64 System.IO.SeekOrigin))
  (define-method-port
    flush
    System.Net.WebConnectionStream
    Flush
    (System.Void))
  (define-method-port
    close
    System.Net.WebConnectionStream
    Close
    (System.Void))
  (define-field-port
    can-timeout?
    #f
    #f
    (property:)
    System.Net.WebConnectionStream
    CanTimeout
    System.Boolean)
  (define-field-port
    read-timeout-get
    read-timeout-set!
    read-timeout-update!
    (property:)
    System.Net.WebConnectionStream
    ReadTimeout
    System.Int32)
  (define-field-port
    write-timeout-get
    write-timeout-set!
    write-timeout-update!
    (property:)
    System.Net.WebConnectionStream
    WriteTimeout
    System.Int32)
  (define-field-port
    can-seek?
    #f
    #f
    (property:)
    System.Net.WebConnectionStream
    CanSeek
    System.Boolean)
  (define-field-port
    can-read?
    #f
    #f
    (property:)
    System.Net.WebConnectionStream
    CanRead
    System.Boolean)
  (define-field-port
    can-write?
    #f
    #f
    (property:)
    System.Net.WebConnectionStream
    CanWrite
    System.Boolean)
  (define-field-port
    length
    #f
    #f
    (property:)
    System.Net.WebConnectionStream
    Length
    System.Int64)
  (define-field-port
    position-get
    position-set!
    position-update!
    (property:)
    System.Net.WebConnectionStream
    Position
    System.Int64))
