(library (system io stream)
  (export is?
          stream?
          read
          dispose
          read-byte
          end-write
          write
          begin-write
          set-length
          end-read
          begin-read
          write-byte
          synchronized
          seek
          flush
          close
          null
          can-read?
          can-seek?
          can-write?
          can-timeout?
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
  (define (is? a) (clr-is System.IO.Stream a))
  (define (stream? a) (clr-is System.IO.Stream a))
  (define-method-port
    read
    System.IO.Stream
    Read
    (System.Int32 System.Byte[] System.Int32 System.Int32))
  (define-method-port dispose System.IO.Stream Dispose (System.Void))
  (define-method-port
    read-byte
    System.IO.Stream
    ReadByte
    (System.Int32))
  (define-method-port
    end-write
    System.IO.Stream
    EndWrite
    (System.Void System.IAsyncResult))
  (define-method-port
    write
    System.IO.Stream
    Write
    (System.Void System.Byte[] System.Int32 System.Int32))
  (define-method-port
    begin-write
    System.IO.Stream
    BeginWrite
    (System.IAsyncResult
      System.Byte[]
      System.Int32
      System.Int32
      System.AsyncCallback
      System.Object))
  (define-method-port
    set-length
    System.IO.Stream
    SetLength
    (System.Void System.Int64))
  (define-method-port
    end-read
    System.IO.Stream
    EndRead
    (System.Int32 System.IAsyncResult))
  (define-method-port
    begin-read
    System.IO.Stream
    BeginRead
    (System.IAsyncResult
      System.Byte[]
      System.Int32
      System.Int32
      System.AsyncCallback
      System.Object))
  (define-method-port
    write-byte
    System.IO.Stream
    WriteByte
    (System.Void System.Byte))
  (define-method-port
    synchronized
    System.IO.Stream
    Synchronized
    (static: System.IO.Stream System.IO.Stream))
  (define-method-port
    seek
    System.IO.Stream
    Seek
    (System.Int64 System.Int64 System.IO.SeekOrigin))
  (define-method-port flush System.IO.Stream Flush (System.Void))
  (define-method-port close System.IO.Stream Close (System.Void))
  (define-field-port
    null
    #f
    #f
    (static:)
    System.IO.Stream
    Null
    System.IO.Stream)
  (define-field-port
    can-read?
    #f
    #f
    (property:)
    System.IO.Stream
    CanRead
    System.Boolean)
  (define-field-port
    can-seek?
    #f
    #f
    (property:)
    System.IO.Stream
    CanSeek
    System.Boolean)
  (define-field-port
    can-write?
    #f
    #f
    (property:)
    System.IO.Stream
    CanWrite
    System.Boolean)
  (define-field-port
    can-timeout?
    #f
    #f
    (property:)
    System.IO.Stream
    CanTimeout
    System.Boolean)
  (define-field-port
    length
    #f
    #f
    (property:)
    System.IO.Stream
    Length
    System.Int64)
  (define-field-port
    position-get
    position-set!
    position-update!
    (property:)
    System.IO.Stream
    Position
    System.Int64)
  (define-field-port
    read-timeout-get
    read-timeout-set!
    read-timeout-update!
    (property:)
    System.IO.Stream
    ReadTimeout
    System.Int32)
  (define-field-port
    write-timeout-get
    write-timeout-set!
    write-timeout-update!
    (property:)
    System.IO.Stream
    WriteTimeout
    System.Int32))
