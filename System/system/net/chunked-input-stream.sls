(library (system net chunked-input-stream)
  (export new
          is?
          chunked-input-stream?
          read
          end-read
          begin-read
          close
          decoder-get
          decoder-set!
          decoder-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.ChunkedInputStream a ...)))))
  (define (is? a) (clr-is System.Net.ChunkedInputStream a))
  (define (chunked-input-stream? a)
    (clr-is System.Net.ChunkedInputStream a))
  (define-method-port
    read
    System.Net.ChunkedInputStream
    Read
    (System.Int32 System.Byte[] System.Int32 System.Int32))
  (define-method-port
    end-read
    System.Net.ChunkedInputStream
    EndRead
    (System.Int32 System.IAsyncResult))
  (define-method-port
    begin-read
    System.Net.ChunkedInputStream
    BeginRead
    (System.IAsyncResult
      System.Byte[]
      System.Int32
      System.Int32
      System.AsyncCallback
      System.Object))
  (define-method-port
    close
    System.Net.ChunkedInputStream
    Close
    (System.Void))
  (define-field-port
    decoder-get
    decoder-set!
    decoder-update!
    (property:)
    System.Net.ChunkedInputStream
    Decoder
    System.Net.ChunkStream))
