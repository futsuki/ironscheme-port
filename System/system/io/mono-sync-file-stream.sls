(library (system io mono-sync-file-stream)
  (export new
          is?
          mono-sync-file-stream?
          end-write
          begin-write
          end-read
          begin-read)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.IO.MonoSyncFileStream a ...)))))
  (define (is? a) (clr-is System.IO.MonoSyncFileStream a))
  (define (mono-sync-file-stream? a)
    (clr-is System.IO.MonoSyncFileStream a))
  (define-method-port
    end-write
    System.IO.MonoSyncFileStream
    EndWrite
    (System.Void System.IAsyncResult))
  (define-method-port
    begin-write
    System.IO.MonoSyncFileStream
    BeginWrite
    (System.IAsyncResult
      System.Byte[]
      System.Int32
      System.Int32
      System.AsyncCallback
      System.Object))
  (define-method-port
    end-read
    System.IO.MonoSyncFileStream
    EndRead
    (System.Int32 System.IAsyncResult))
  (define-method-port
    begin-read
    System.IO.MonoSyncFileStream
    BeginRead
    (System.IAsyncResult
      System.Byte[]
      System.Int32
      System.Int32
      System.AsyncCallback
      System.Object)))
