(library (system net sockets network-stream)
  (export new
          is?
          network-stream?
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
          can-read?
          can-seek?
          can-timeout?
          can-write?
          data-available?
          length
          position-get
          position-set!
          position-update!
          read-timeout-get
          read-timeout-set!
          read-timeout-update!
          write-timeout-get
          write-timeout-set!
          write-timeout-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Net.Sockets.NetworkStream a ...)))))
  (define (is? a) (clr-is System.Net.Sockets.NetworkStream a))
  (define (network-stream? a)
    (clr-is System.Net.Sockets.NetworkStream a))
  (define-method-port
    read
    System.Net.Sockets.NetworkStream
    Read
    (System.Int32 System.Byte[] System.Int32 System.Int32))
  (define-method-port
    end-write
    System.Net.Sockets.NetworkStream
    EndWrite
    (System.Void System.IAsyncResult))
  (define-method-port
    write
    System.Net.Sockets.NetworkStream
    Write
    (System.Void System.Byte[] System.Int32 System.Int32))
  (define-method-port
    begin-write
    System.Net.Sockets.NetworkStream
    BeginWrite
    (System.IAsyncResult
      System.Byte[]
      System.Int32
      System.Int32
      System.AsyncCallback
      System.Object))
  (define-method-port
    set-length
    System.Net.Sockets.NetworkStream
    SetLength
    (System.Void System.Int64))
  (define-method-port
    end-read
    System.Net.Sockets.NetworkStream
    EndRead
    (System.Int32 System.IAsyncResult))
  (define-method-port
    begin-read
    System.Net.Sockets.NetworkStream
    BeginRead
    (System.IAsyncResult
      System.Byte[]
      System.Int32
      System.Int32
      System.AsyncCallback
      System.Object))
  (define-method-port
    seek
    System.Net.Sockets.NetworkStream
    Seek
    (System.Int64 System.Int64 System.IO.SeekOrigin))
  (define-method-port
    flush
    System.Net.Sockets.NetworkStream
    Flush
    (System.Void))
  (define-method-port
    close
    System.Net.Sockets.NetworkStream
    Close
    (System.Void System.Int32))
  (define-field-port
    can-read?
    #f
    #f
    (property:)
    System.Net.Sockets.NetworkStream
    CanRead
    System.Boolean)
  (define-field-port
    can-seek?
    #f
    #f
    (property:)
    System.Net.Sockets.NetworkStream
    CanSeek
    System.Boolean)
  (define-field-port
    can-timeout?
    #f
    #f
    (property:)
    System.Net.Sockets.NetworkStream
    CanTimeout
    System.Boolean)
  (define-field-port
    can-write?
    #f
    #f
    (property:)
    System.Net.Sockets.NetworkStream
    CanWrite
    System.Boolean)
  (define-field-port
    data-available?
    #f
    #f
    (property:)
    System.Net.Sockets.NetworkStream
    DataAvailable
    System.Boolean)
  (define-field-port
    length
    #f
    #f
    (property:)
    System.Net.Sockets.NetworkStream
    Length
    System.Int64)
  (define-field-port
    position-get
    position-set!
    position-update!
    (property:)
    System.Net.Sockets.NetworkStream
    Position
    System.Int64)
  (define-field-port
    read-timeout-get
    read-timeout-set!
    read-timeout-update!
    (property:)
    System.Net.Sockets.NetworkStream
    ReadTimeout
    System.Int32)
  (define-field-port
    write-timeout-get
    write-timeout-set!
    write-timeout-update!
    (property:)
    System.Net.Sockets.NetworkStream
    WriteTimeout
    System.Int32))
