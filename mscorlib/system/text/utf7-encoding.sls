(library (system text utf7-encoding)
  (export new
          is?
          utf7-encoding?
          get-encoder
          get-hash-code
          get-chars
          get-string
          get-bytes
          get-max-byte-count
          get-byte-count
          get-char-count
          get-max-char-count
          equals?
          get-decoder)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Text.UTF7Encoding a ...)))))
  (define (is? a) (clr-is System.Text.UTF7Encoding a))
  (define (utf7-encoding? a) (clr-is System.Text.UTF7Encoding a))
  (define-method-port
    get-encoder
    System.Text.UTF7Encoding
    GetEncoder
    (System.Text.Encoder))
  (define-method-port
    get-hash-code
    System.Text.UTF7Encoding
    GetHashCode
    (System.Int32))
  (define-method-port
    get-chars
    System.Text.UTF7Encoding
    GetChars
    (System.Int32 System.Byte* System.Int32 System.Char* System.Int32)
    (System.Int32
      System.Byte[]
      System.Int32
      System.Int32
      System.Char[]
      System.Int32))
  (define-method-port
    get-string
    System.Text.UTF7Encoding
    GetString
    (System.String System.Byte[] System.Int32 System.Int32))
  (define-method-port
    get-bytes
    System.Text.UTF7Encoding
    GetBytes
    (System.Int32
      System.String
      System.Int32
      System.Int32
      System.Byte[]
      System.Int32)
    (System.Int32 System.Char* System.Int32 System.Byte* System.Int32)
    (System.Int32
      System.Char[]
      System.Int32
      System.Int32
      System.Byte[]
      System.Int32))
  (define-method-port
    get-max-byte-count
    System.Text.UTF7Encoding
    GetMaxByteCount
    (System.Int32 System.Int32))
  (define-method-port
    get-byte-count
    System.Text.UTF7Encoding
    GetByteCount
    (System.Int32 System.String)
    (System.Int32 System.Char* System.Int32)
    (System.Int32 System.Char[] System.Int32 System.Int32))
  (define-method-port
    get-char-count
    System.Text.UTF7Encoding
    GetCharCount
    (System.Int32 System.Byte* System.Int32)
    (System.Int32 System.Byte[] System.Int32 System.Int32))
  (define-method-port
    get-max-char-count
    System.Text.UTF7Encoding
    GetMaxCharCount
    (System.Int32 System.Int32))
  (define-method-port
    equals?
    System.Text.UTF7Encoding
    Equals
    (System.Boolean System.Object))
  (define-method-port
    get-decoder
    System.Text.UTF7Encoding
    GetDecoder
    (System.Text.Decoder)))
