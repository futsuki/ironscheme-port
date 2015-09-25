(library (system security cryptography crypto-stream)
  (export new
          is?
          crypto-stream?
          read
          flush-final-block
          write
          set-length
          clear
          seek
          flush
          close
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
         #'(clr-new System.Security.Cryptography.CryptoStream a ...)))))
  (define (is? a) (clr-is System.Security.Cryptography.CryptoStream a))
  (define (crypto-stream? a)
    (clr-is System.Security.Cryptography.CryptoStream a))
  (define-method-port
    read
    System.Security.Cryptography.CryptoStream
    Read
    (System.Int32 System.Byte[] System.Int32 System.Int32))
  (define-method-port
    flush-final-block
    System.Security.Cryptography.CryptoStream
    FlushFinalBlock
    (System.Void))
  (define-method-port
    write
    System.Security.Cryptography.CryptoStream
    Write
    (System.Void System.Byte[] System.Int32 System.Int32))
  (define-method-port
    set-length
    System.Security.Cryptography.CryptoStream
    SetLength
    (System.Void System.Int64))
  (define-method-port
    clear
    System.Security.Cryptography.CryptoStream
    Clear
    (System.Void))
  (define-method-port
    seek
    System.Security.Cryptography.CryptoStream
    Seek
    (System.Int64 System.Int64 System.IO.SeekOrigin))
  (define-method-port
    flush
    System.Security.Cryptography.CryptoStream
    Flush
    (System.Void))
  (define-method-port
    close
    System.Security.Cryptography.CryptoStream
    Close
    (System.Void))
  (define-field-port
    can-read?
    #f
    #f
    (property:)
    System.Security.Cryptography.CryptoStream
    CanRead
    System.Boolean)
  (define-field-port
    can-seek?
    #f
    #f
    (property:)
    System.Security.Cryptography.CryptoStream
    CanSeek
    System.Boolean)
  (define-field-port
    can-write?
    #f
    #f
    (property:)
    System.Security.Cryptography.CryptoStream
    CanWrite
    System.Boolean)
  (define-field-port
    length
    #f
    #f
    (property:)
    System.Security.Cryptography.CryptoStream
    Length
    System.Int64)
  (define-field-port
    position-get
    position-set!
    position-update!
    (property:)
    System.Security.Cryptography.CryptoStream
    Position
    System.Int64))
