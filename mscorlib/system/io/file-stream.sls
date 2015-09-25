(library (system io file-stream)
  (export new
          is?
          file-stream?
          read
          lock
          read-byte
          end-write
          write
          begin-write
          set-length
          end-read
          unlock
          set-access-control
          write-byte
          begin-read
          seek
          flush
          get-access-control
          can-read?
          can-write?
          can-seek?
          is-async?
          name
          length
          position-get
          position-set!
          position-update!
          handle
          safe-file-handle)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.IO.FileStream a ...)))))
  (define (is? a) (clr-is System.IO.FileStream a))
  (define (file-stream? a) (clr-is System.IO.FileStream a))
  (define-method-port
    read
    System.IO.FileStream
    Read
    (System.Int32 System.Byte[] System.Int32 System.Int32))
  (define-method-port
    lock
    System.IO.FileStream
    Lock
    (System.Void System.Int64 System.Int64))
  (define-method-port
    read-byte
    System.IO.FileStream
    ReadByte
    (System.Int32))
  (define-method-port
    end-write
    System.IO.FileStream
    EndWrite
    (System.Void System.IAsyncResult))
  (define-method-port
    write
    System.IO.FileStream
    Write
    (System.Void System.Byte[] System.Int32 System.Int32))
  (define-method-port
    begin-write
    System.IO.FileStream
    BeginWrite
    (System.IAsyncResult
      System.Byte[]
      System.Int32
      System.Int32
      System.AsyncCallback
      System.Object))
  (define-method-port
    set-length
    System.IO.FileStream
    SetLength
    (System.Void System.Int64))
  (define-method-port
    end-read
    System.IO.FileStream
    EndRead
    (System.Int32 System.IAsyncResult))
  (define-method-port
    unlock
    System.IO.FileStream
    Unlock
    (System.Void System.Int64 System.Int64))
  (define-method-port
    set-access-control
    System.IO.FileStream
    SetAccessControl
    (System.Void System.Security.AccessControl.FileSecurity))
  (define-method-port
    write-byte
    System.IO.FileStream
    WriteByte
    (System.Void System.Byte))
  (define-method-port
    begin-read
    System.IO.FileStream
    BeginRead
    (System.IAsyncResult
      System.Byte[]
      System.Int32
      System.Int32
      System.AsyncCallback
      System.Object))
  (define-method-port
    seek
    System.IO.FileStream
    Seek
    (System.Int64 System.Int64 System.IO.SeekOrigin))
  (define-method-port flush System.IO.FileStream Flush (System.Void))
  (define-method-port
    get-access-control
    System.IO.FileStream
    GetAccessControl
    (System.Security.AccessControl.FileSecurity))
  (define-field-port
    can-read?
    #f
    #f
    (property:)
    System.IO.FileStream
    CanRead
    System.Boolean)
  (define-field-port
    can-write?
    #f
    #f
    (property:)
    System.IO.FileStream
    CanWrite
    System.Boolean)
  (define-field-port
    can-seek?
    #f
    #f
    (property:)
    System.IO.FileStream
    CanSeek
    System.Boolean)
  (define-field-port
    is-async?
    #f
    #f
    (property:)
    System.IO.FileStream
    IsAsync
    System.Boolean)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.IO.FileStream
    Name
    System.String)
  (define-field-port
    length
    #f
    #f
    (property:)
    System.IO.FileStream
    Length
    System.Int64)
  (define-field-port
    position-get
    position-set!
    position-update!
    (property:)
    System.IO.FileStream
    Position
    System.Int64)
  (define-field-port
    handle
    #f
    #f
    (property:)
    System.IO.FileStream
    Handle
    System.IntPtr)
  (define-field-port
    safe-file-handle
    #f
    #f
    (property:)
    System.IO.FileStream
    SafeFileHandle
    Microsoft.Win32.SafeHandles.SafeFileHandle))
