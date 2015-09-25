(library (system text encoding)
  (export is?
          encoding?
          get-encoder
          get-hash-code
          get-chars
          get-preamble
          convert
          is-always-normalized?
          get-string
          get-bytes
          get-encoding
          get-max-byte-count
          get-byte-count
          get-char-count
          get-max-char-count
          get-encodings
          clone
          equals?
          get-decoder
          is-read-only?
          is-single-byte?
          decoder-fallback-get
          decoder-fallback-set!
          decoder-fallback-update!
          encoder-fallback-get
          encoder-fallback-set!
          encoder-fallback-update!
          body-name
          code-page
          encoding-name
          header-name
          is-browser-display?
          is-browser-save?
          is-mail-news-display?
          is-mail-news-save?
          web-name
          windows-code-page
          ascii
          big-endian-unicode
          default
          utf7
          utf8
          unicode
          utf32)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Text.Encoding a))
  (define (encoding? a) (clr-is System.Text.Encoding a))
  (define-method-port
    get-encoder
    System.Text.Encoding
    GetEncoder
    (System.Text.Encoder))
  (define-method-port
    get-hash-code
    System.Text.Encoding
    GetHashCode
    (System.Int32))
  (define-method-port
    get-chars
    System.Text.Encoding
    GetChars
    (System.Int32 System.Byte* System.Int32 System.Char* System.Int32)
    (System.Char[] System.Byte[])
    (System.Char[] System.Byte[] System.Int32 System.Int32)
    (System.Int32
      System.Byte[]
      System.Int32
      System.Int32
      System.Char[]
      System.Int32))
  (define-method-port
    get-preamble
    System.Text.Encoding
    GetPreamble
    (System.Byte[]))
  (define-method-port
    convert
    System.Text.Encoding
    Convert
    (static:
      System.Byte[]
      System.Text.Encoding
      System.Text.Encoding
      System.Byte[]
      System.Int32
      System.Int32)
    (static:
      System.Byte[]
      System.Text.Encoding
      System.Text.Encoding
      System.Byte[]))
  (define-method-port
    is-always-normalized?
    System.Text.Encoding
    IsAlwaysNormalized
    (System.Boolean System.Text.NormalizationForm)
    (System.Boolean))
  (define-method-port
    get-string
    System.Text.Encoding
    GetString
    (System.String System.Byte[])
    (System.String System.Byte[] System.Int32 System.Int32))
  (define-method-port
    get-bytes
    System.Text.Encoding
    GetBytes
    (System.Int32 System.Char* System.Int32 System.Byte* System.Int32)
    (System.Byte[] System.Char[])
    (System.Byte[] System.Char[] System.Int32 System.Int32)
    (System.Byte[] System.String)
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
    get-encoding
    System.Text.Encoding
    GetEncoding
    (static: System.Text.Encoding System.String)
    (static:
      System.Text.Encoding
      System.String
      System.Text.EncoderFallback
      System.Text.DecoderFallback)
    (static:
      System.Text.Encoding
      System.Int32
      System.Text.EncoderFallback
      System.Text.DecoderFallback)
    (static: System.Text.Encoding System.Int32))
  (define-method-port
    get-max-byte-count
    System.Text.Encoding
    GetMaxByteCount
    (System.Int32 System.Int32))
  (define-method-port
    get-byte-count
    System.Text.Encoding
    GetByteCount
    (System.Int32 System.Char* System.Int32)
    (System.Int32 System.Char[])
    (System.Int32 System.String)
    (System.Int32 System.Char[] System.Int32 System.Int32))
  (define-method-port
    get-char-count
    System.Text.Encoding
    GetCharCount
    (System.Int32 System.Byte* System.Int32)
    (System.Int32 System.Byte[])
    (System.Int32 System.Byte[] System.Int32 System.Int32))
  (define-method-port
    get-max-char-count
    System.Text.Encoding
    GetMaxCharCount
    (System.Int32 System.Int32))
  (define-method-port
    get-encodings
    System.Text.Encoding
    GetEncodings
    (static: System.Text.EncodingInfo[]))
  (define-method-port clone System.Text.Encoding Clone (System.Object))
  (define-method-port
    equals?
    System.Text.Encoding
    Equals
    (System.Boolean System.Object))
  (define-method-port
    get-decoder
    System.Text.Encoding
    GetDecoder
    (System.Text.Decoder))
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Text.Encoding
    IsReadOnly
    System.Boolean)
  (define-field-port
    is-single-byte?
    #f
    #f
    (property:)
    System.Text.Encoding
    IsSingleByte
    System.Boolean)
  (define-field-port
    decoder-fallback-get
    decoder-fallback-set!
    decoder-fallback-update!
    (property:)
    System.Text.Encoding
    DecoderFallback
    System.Text.DecoderFallback)
  (define-field-port
    encoder-fallback-get
    encoder-fallback-set!
    encoder-fallback-update!
    (property:)
    System.Text.Encoding
    EncoderFallback
    System.Text.EncoderFallback)
  (define-field-port
    body-name
    #f
    #f
    (property:)
    System.Text.Encoding
    BodyName
    System.String)
  (define-field-port
    code-page
    #f
    #f
    (property:)
    System.Text.Encoding
    CodePage
    System.Int32)
  (define-field-port
    encoding-name
    #f
    #f
    (property:)
    System.Text.Encoding
    EncodingName
    System.String)
  (define-field-port
    header-name
    #f
    #f
    (property:)
    System.Text.Encoding
    HeaderName
    System.String)
  (define-field-port
    is-browser-display?
    #f
    #f
    (property:)
    System.Text.Encoding
    IsBrowserDisplay
    System.Boolean)
  (define-field-port
    is-browser-save?
    #f
    #f
    (property:)
    System.Text.Encoding
    IsBrowserSave
    System.Boolean)
  (define-field-port
    is-mail-news-display?
    #f
    #f
    (property:)
    System.Text.Encoding
    IsMailNewsDisplay
    System.Boolean)
  (define-field-port
    is-mail-news-save?
    #f
    #f
    (property:)
    System.Text.Encoding
    IsMailNewsSave
    System.Boolean)
  (define-field-port
    web-name
    #f
    #f
    (property:)
    System.Text.Encoding
    WebName
    System.String)
  (define-field-port
    windows-code-page
    #f
    #f
    (property:)
    System.Text.Encoding
    WindowsCodePage
    System.Int32)
  (define-field-port
    ascii
    #f
    #f
    (static: property:)
    System.Text.Encoding
    ASCII
    System.Text.Encoding)
  (define-field-port
    big-endian-unicode
    #f
    #f
    (static: property:)
    System.Text.Encoding
    BigEndianUnicode
    System.Text.Encoding)
  (define-field-port
    default
    #f
    #f
    (static: property:)
    System.Text.Encoding
    Default
    System.Text.Encoding)
  (define-field-port
    utf7
    #f
    #f
    (static: property:)
    System.Text.Encoding
    UTF7
    System.Text.Encoding)
  (define-field-port
    utf8
    #f
    #f
    (static: property:)
    System.Text.Encoding
    UTF8
    System.Text.Encoding)
  (define-field-port
    unicode
    #f
    #f
    (static: property:)
    System.Text.Encoding
    Unicode
    System.Text.Encoding)
  (define-field-port
    utf32
    #f
    #f
    (static: property:)
    System.Text.Encoding
    UTF32
    System.Text.Encoding))
