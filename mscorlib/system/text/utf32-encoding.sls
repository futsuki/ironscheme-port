(library (system text utf32-encoding)
  (export new
          is?
          utf32-encoding?
          get-encoder
          get-hash-code
          get-chars
          get-preamble
          get-string
          get-bytes
          equals?
          get-byte-count
          get-char-count
          get-max-char-count
          get-max-byte-count
          get-decoder)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Text.UTF32Encoding a ...)))))
  (define (is? a) (clr-is System.Text.UTF32Encoding a))
  (define (utf32-encoding? a) (clr-is System.Text.UTF32Encoding a))
  (define-method-port
    get-encoder
    System.Text.UTF32Encoding
    GetEncoder
    (System.Text.Encoder))
  (define-method-port
    get-hash-code
    System.Text.UTF32Encoding
    GetHashCode
    (System.Int32))
  (define-method-port
    get-chars
    System.Text.UTF32Encoding
    GetChars
    (System.Int32 System.Byte* System.Int32 System.Char* System.Int32)
    (System.Int32
      System.Byte[]
      System.Int32
      System.Int32
      System.Char[]
      System.Int32))
  (define-method-port
    get-preamble
    System.Text.UTF32Encoding
    GetPreamble
    (System.Byte[]))
  (define-method-port
    get-string
    System.Text.UTF32Encoding
    GetString
    (System.String System.Byte[] System.Int32 System.Int32))
  (define-method-port
    get-bytes
    System.Text.UTF32Encoding
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
    equals?
    System.Text.UTF32Encoding
    Equals
    (System.Boolean System.Object))
  (define-method-port
    get-byte-count
    System.Text.UTF32Encoding
    GetByteCount
    (System.Int32 System.String)
    (System.Int32 System.Char* System.Int32)
    (System.Int32 System.Char[] System.Int32 System.Int32))
  (define-method-port
    get-char-count
    System.Text.UTF32Encoding
    GetCharCount
    (System.Int32 System.Byte* System.Int32)
    (System.Int32 System.Byte[] System.Int32 System.Int32))
  (define-method-port
    get-max-char-count
    System.Text.UTF32Encoding
    GetMaxCharCount
    (System.Int32 System.Int32))
  (define-method-port
    get-max-byte-count
    System.Text.UTF32Encoding
    GetMaxByteCount
    (System.Int32 System.Int32))
  (define-method-port
    get-decoder
    System.Text.UTF32Encoding
    GetDecoder
    (System.Text.Decoder)))
