(library (system text latin1-encoding)
  (export new
          is?
          latin1-encoding?
          get-chars
          is-always-normalized?
          get-string
          get-bytes
          get-byte-count
          get-char-count
          get-max-char-count
          get-max-byte-count
          is-single-byte?
          body-name
          encoding-name
          header-name
          is-browser-display?
          is-browser-save?
          is-mail-news-display?
          is-mail-news-save?
          web-name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Text.Latin1Encoding a ...)))))
  (define (is? a) (clr-is System.Text.Latin1Encoding a))
  (define (latin1-encoding? a) (clr-is System.Text.Latin1Encoding a))
  (define-method-port
    get-chars
    System.Text.Latin1Encoding
    GetChars
    (System.Int32
      System.Byte[]
      System.Int32
      System.Int32
      System.Char[]
      System.Int32))
  (define-method-port
    is-always-normalized?
    System.Text.Latin1Encoding
    IsAlwaysNormalized
    (System.Boolean System.Text.NormalizationForm))
  (define-method-port
    get-string
    System.Text.Latin1Encoding
    GetString
    (System.String System.Byte[])
    (System.String System.Byte[] System.Int32 System.Int32))
  (define-method-port
    get-bytes
    System.Text.Latin1Encoding
    GetBytes
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
    System.Text.Latin1Encoding
    GetByteCount
    (System.Int32 System.String)
    (System.Int32 System.Char[] System.Int32 System.Int32))
  (define-method-port
    get-char-count
    System.Text.Latin1Encoding
    GetCharCount
    (System.Int32 System.Byte[] System.Int32 System.Int32))
  (define-method-port
    get-max-char-count
    System.Text.Latin1Encoding
    GetMaxCharCount
    (System.Int32 System.Int32))
  (define-method-port
    get-max-byte-count
    System.Text.Latin1Encoding
    GetMaxByteCount
    (System.Int32 System.Int32))
  (define-field-port
    is-single-byte?
    #f
    #f
    (property:)
    System.Text.Latin1Encoding
    IsSingleByte
    System.Boolean)
  (define-field-port
    body-name
    #f
    #f
    (property:)
    System.Text.Latin1Encoding
    BodyName
    System.String)
  (define-field-port
    encoding-name
    #f
    #f
    (property:)
    System.Text.Latin1Encoding
    EncodingName
    System.String)
  (define-field-port
    header-name
    #f
    #f
    (property:)
    System.Text.Latin1Encoding
    HeaderName
    System.String)
  (define-field-port
    is-browser-display?
    #f
    #f
    (property:)
    System.Text.Latin1Encoding
    IsBrowserDisplay
    System.Boolean)
  (define-field-port
    is-browser-save?
    #f
    #f
    (property:)
    System.Text.Latin1Encoding
    IsBrowserSave
    System.Boolean)
  (define-field-port
    is-mail-news-display?
    #f
    #f
    (property:)
    System.Text.Latin1Encoding
    IsMailNewsDisplay
    System.Boolean)
  (define-field-port
    is-mail-news-save?
    #f
    #f
    (property:)
    System.Text.Latin1Encoding
    IsMailNewsSave
    System.Boolean)
  (define-field-port
    web-name
    #f
    #f
    (property:)
    System.Text.Latin1Encoding
    WebName
    System.String))
