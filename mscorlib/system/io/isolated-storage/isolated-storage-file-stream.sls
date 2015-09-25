(library (system io isolated-storage isolated-storage-file-stream)
  (export new
          is?
          isolated-storage-file-stream?
          read
          read-byte
          end-write
          write
          begin-write
          set-length
          end-read
          write-byte
          begin-read
          seek
          flush
          can-read?
          can-seek?
          can-write?
          safe-file-handle
          handle
          is-async?
          length
          position-get
          position-set!
          position-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.IO.IsolatedStorage.IsolatedStorageFileStream
             a
             ...)))))
  (define (is? a)
    (clr-is System.IO.IsolatedStorage.IsolatedStorageFileStream a))
  (define (isolated-storage-file-stream? a)
    (clr-is System.IO.IsolatedStorage.IsolatedStorageFileStream a))
  (define-method-port
    read
    System.IO.IsolatedStorage.IsolatedStorageFileStream
    Read
    (System.Int32 System.Byte[] System.Int32 System.Int32))
  (define-method-port
    read-byte
    System.IO.IsolatedStorage.IsolatedStorageFileStream
    ReadByte
    (System.Int32))
  (define-method-port
    end-write
    System.IO.IsolatedStorage.IsolatedStorageFileStream
    EndWrite
    (System.Void System.IAsyncResult))
  (define-method-port
    write
    System.IO.IsolatedStorage.IsolatedStorageFileStream
    Write
    (System.Void System.Byte[] System.Int32 System.Int32))
  (define-method-port
    begin-write
    System.IO.IsolatedStorage.IsolatedStorageFileStream
    BeginWrite
    (System.IAsyncResult
      System.Byte[]
      System.Int32
      System.Int32
      System.AsyncCallback
      System.Object))
  (define-method-port
    set-length
    System.IO.IsolatedStorage.IsolatedStorageFileStream
    SetLength
    (System.Void System.Int64))
  (define-method-port
    end-read
    System.IO.IsolatedStorage.IsolatedStorageFileStream
    EndRead
    (System.Int32 System.IAsyncResult))
  (define-method-port
    write-byte
    System.IO.IsolatedStorage.IsolatedStorageFileStream
    WriteByte
    (System.Void System.Byte))
  (define-method-port
    begin-read
    System.IO.IsolatedStorage.IsolatedStorageFileStream
    BeginRead
    (System.IAsyncResult
      System.Byte[]
      System.Int32
      System.Int32
      System.AsyncCallback
      System.Object))
  (define-method-port
    seek
    System.IO.IsolatedStorage.IsolatedStorageFileStream
    Seek
    (System.Int64 System.Int64 System.IO.SeekOrigin))
  (define-method-port
    flush
    System.IO.IsolatedStorage.IsolatedStorageFileStream
    Flush
    (System.Void))
  (define-field-port
    can-read?
    #f
    #f
    (property:)
    System.IO.IsolatedStorage.IsolatedStorageFileStream
    CanRead
    System.Boolean)
  (define-field-port
    can-seek?
    #f
    #f
    (property:)
    System.IO.IsolatedStorage.IsolatedStorageFileStream
    CanSeek
    System.Boolean)
  (define-field-port
    can-write?
    #f
    #f
    (property:)
    System.IO.IsolatedStorage.IsolatedStorageFileStream
    CanWrite
    System.Boolean)
  (define-field-port
    safe-file-handle
    #f
    #f
    (property:)
    System.IO.IsolatedStorage.IsolatedStorageFileStream
    SafeFileHandle
    Microsoft.Win32.SafeHandles.SafeFileHandle)
  (define-field-port
    handle
    #f
    #f
    (property:)
    System.IO.IsolatedStorage.IsolatedStorageFileStream
    Handle
    System.IntPtr)
  (define-field-port
    is-async?
    #f
    #f
    (property:)
    System.IO.IsolatedStorage.IsolatedStorageFileStream
    IsAsync
    System.Boolean)
  (define-field-port
    length
    #f
    #f
    (property:)
    System.IO.IsolatedStorage.IsolatedStorageFileStream
    Length
    System.Int64)
  (define-field-port
    position-get
    position-set!
    position-update!
    (property:)
    System.IO.IsolatedStorage.IsolatedStorageFileStream
    Position
    System.Int64))
