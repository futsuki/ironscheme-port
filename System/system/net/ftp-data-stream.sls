(library (system net ftp-data-stream)
  (export is?
          ftp-data-stream?
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
          can-write?
          can-seek?
          length
          position-get
          position-set!
          position-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Net.FtpDataStream a))
  (define (ftp-data-stream? a) (clr-is System.Net.FtpDataStream a))
  (define-method-port
    read
    System.Net.FtpDataStream
    Read
    (System.Int32 System.Byte[] System.Int32 System.Int32))
  (define-method-port
    end-write
    System.Net.FtpDataStream
    EndWrite
    (System.Void System.IAsyncResult))
  (define-method-port
    write
    System.Net.FtpDataStream
    Write
    (System.Void System.Byte[] System.Int32 System.Int32))
  (define-method-port
    begin-write
    System.Net.FtpDataStream
    BeginWrite
    (System.IAsyncResult
      System.Byte[]
      System.Int32
      System.Int32
      System.AsyncCallback
      System.Object))
  (define-method-port
    set-length
    System.Net.FtpDataStream
    SetLength
    (System.Void System.Int64))
  (define-method-port
    end-read
    System.Net.FtpDataStream
    EndRead
    (System.Int32 System.IAsyncResult))
  (define-method-port
    begin-read
    System.Net.FtpDataStream
    BeginRead
    (System.IAsyncResult
      System.Byte[]
      System.Int32
      System.Int32
      System.AsyncCallback
      System.Object))
  (define-method-port
    seek
    System.Net.FtpDataStream
    Seek
    (System.Int64 System.Int64 System.IO.SeekOrigin))
  (define-method-port
    flush
    System.Net.FtpDataStream
    Flush
    (System.Void))
  (define-method-port
    close
    System.Net.FtpDataStream
    Close
    (System.Void))
  (define-field-port
    can-read?
    #f
    #f
    (property:)
    System.Net.FtpDataStream
    CanRead
    System.Boolean)
  (define-field-port
    can-write?
    #f
    #f
    (property:)
    System.Net.FtpDataStream
    CanWrite
    System.Boolean)
  (define-field-port
    can-seek?
    #f
    #f
    (property:)
    System.Net.FtpDataStream
    CanSeek
    System.Boolean)
  (define-field-port
    length
    #f
    #f
    (property:)
    System.Net.FtpDataStream
    Length
    System.Int64)
  (define-field-port
    position-get
    position-set!
    position-update!
    (property:)
    System.Net.FtpDataStream
    Position
    System.Int64))