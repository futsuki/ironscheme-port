(library (system net chunk-stream)
  (export new
          is?
          chunk-stream?
          read
          write-and-read-back
          reset-buffer
          write
          want-more?
          chunk-left)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.ChunkStream a ...)))))
  (define (is? a) (clr-is System.Net.ChunkStream a))
  (define (chunk-stream? a) (clr-is System.Net.ChunkStream a))
  (define-method-port
    read
    System.Net.ChunkStream
    Read
    (System.Int32 System.Byte[] System.Int32 System.Int32))
  (define-method-port
    write-and-read-back
    System.Net.ChunkStream
    WriteAndReadBack
    (System.Void System.Byte[] System.Int32 System.Int32 System.Int32&))
  (define-method-port
    reset-buffer
    System.Net.ChunkStream
    ResetBuffer
    (System.Void))
  (define-method-port
    write
    System.Net.ChunkStream
    Write
    (System.Void System.Byte[] System.Int32 System.Int32))
  (define-field-port
    want-more?
    #f
    #f
    (property:)
    System.Net.ChunkStream
    WantMore
    System.Boolean)
  (define-field-port
    chunk-left
    #f
    #f
    (property:)
    System.Net.ChunkStream
    ChunkLeft
    System.Int32))
