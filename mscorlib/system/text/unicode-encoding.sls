(library (system text unicode-encoding)
  (export new
          is?
          unicode-encoding?
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
          get-decoder
          char-size)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Text.UnicodeEncoding a ...)))))
  (define (is? a) (clr-is System.Text.UnicodeEncoding a))
  (define (unicode-encoding? a) (clr-is System.Text.UnicodeEncoding a))
  (define-method-port
    get-encoder
    System.Text.UnicodeEncoding
    GetEncoder
    (System.Text.Encoder))
  (define-method-port
    get-hash-code
    System.Text.UnicodeEncoding
    GetHashCode
    (System.Int32))
  (define-method-port
    get-chars
    System.Text.UnicodeEncoding
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
    System.Text.UnicodeEncoding
    GetPreamble
    (System.Byte[]))
  (define-method-port
    get-string
    System.Text.UnicodeEncoding
    GetString
    (System.String System.Byte[] System.Int32 System.Int32))
  (define-method-port
    get-bytes
    System.Text.UnicodeEncoding
    GetBytes
    (System.Int32 System.Char* System.Int32 System.Byte* System.Int32)
    (System.Int32
      System.String
      System.Int32
      System.Int32
      System.Byte[]
      System.Int32)
    (System.Int32
      System.Char[]
      System.Int32
      System.Int32
      System.Byte[]
      System.Int32))
  (define-method-port
    equals?
    System.Text.UnicodeEncoding
    Equals
    (System.Boolean System.Object))
  (define-method-port
    get-byte-count
    System.Text.UnicodeEncoding
    GetByteCount
    (System.Int32 System.Char* System.Int32)
    (System.Int32 System.String)
    (System.Int32 System.Char[] System.Int32 System.Int32))
  (define-method-port
    get-char-count
    System.Text.UnicodeEncoding
    GetCharCount
    (System.Int32 System.Byte* System.Int32)
    (System.Int32 System.Byte[] System.Int32 System.Int32))
  (define-method-port
    get-max-char-count
    System.Text.UnicodeEncoding
    GetMaxCharCount
    (System.Int32 System.Int32))
  (define-method-port
    get-max-byte-count
    System.Text.UnicodeEncoding
    GetMaxByteCount
    (System.Int32 System.Int32))
  (define-method-port
    get-decoder
    System.Text.UnicodeEncoding
    GetDecoder
    (System.Text.Decoder))
  (define-field-port
    char-size
    #f
    #f
    (static:)
    System.Text.UnicodeEncoding
    CharSize
    System.Int32))
