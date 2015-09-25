(library (system text asciiencoding)
  (export new
          is?
          asciiencoding?
          get-encoder
          get-chars
          get-string
          get-bytes
          get-byte-count
          get-char-count
          get-max-char-count
          get-max-byte-count
          get-decoder
          is-single-byte?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Text.ASCIIEncoding a ...)))))
  (define (is? a) (clr-is System.Text.ASCIIEncoding a))
  (define (asciiencoding? a) (clr-is System.Text.ASCIIEncoding a))
  (define-method-port
    get-encoder
    System.Text.ASCIIEncoding
    GetEncoder
    (System.Text.Encoder))
  (define-method-port
    get-chars
    System.Text.ASCIIEncoding
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
    System.Text.ASCIIEncoding
    GetString
    (System.String System.Byte[] System.Int32 System.Int32))
  (define-method-port
    get-bytes
    System.Text.ASCIIEncoding
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
    get-byte-count
    System.Text.ASCIIEncoding
    GetByteCount
    (System.Int32 System.Char* System.Int32)
    (System.Int32 System.String)
    (System.Int32 System.Char[] System.Int32 System.Int32))
  (define-method-port
    get-char-count
    System.Text.ASCIIEncoding
    GetCharCount
    (System.Int32 System.Byte* System.Int32)
    (System.Int32 System.Byte[] System.Int32 System.Int32))
  (define-method-port
    get-max-char-count
    System.Text.ASCIIEncoding
    GetMaxCharCount
    (System.Int32 System.Int32))
  (define-method-port
    get-max-byte-count
    System.Text.ASCIIEncoding
    GetMaxByteCount
    (System.Int32 System.Int32))
  (define-method-port
    get-decoder
    System.Text.ASCIIEncoding
    GetDecoder
    (System.Text.Decoder))
  (define-field-port
    is-single-byte?
    #f
    #f
    (property:)
    System.Text.ASCIIEncoding
    IsSingleByte
    System.Boolean))
