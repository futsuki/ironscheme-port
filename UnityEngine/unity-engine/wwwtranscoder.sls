(library (unity-engine wwwtranscoder)
  (export new
          is?
          wwwtranscoder?
          decode
          qpencode
          qpdecode
          urlencode
          urldecode
          seven-bit-clean?
          encode)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.WWWTranscoder a ...)))))
  (define (is? a) (clr-is UnityEngine.WWWTranscoder a))
  (define (wwwtranscoder? a) (clr-is UnityEngine.WWWTranscoder a))
  (define-method-port
    decode
    UnityEngine.WWWTranscoder
    Decode
    (static: System.Byte[] System.Byte[] System.Byte System.Byte))
  (define-method-port
    qpencode
    UnityEngine.WWWTranscoder
    QPEncode
    (static: System.Byte[] System.Byte[])
    (static: System.String System.String System.Text.Encoding)
    (static: System.String System.String))
  (define-method-port
    qpdecode
    UnityEngine.WWWTranscoder
    QPDecode
    (static: System.Byte[] System.Byte[])
    (static: System.String System.String System.Text.Encoding)
    (static: System.String System.String))
  (define-method-port
    urlencode
    UnityEngine.WWWTranscoder
    URLEncode
    (static: System.Byte[] System.Byte[])
    (static: System.String System.String System.Text.Encoding)
    (static: System.String System.String))
  (define-method-port
    urldecode
    UnityEngine.WWWTranscoder
    URLDecode
    (static: System.Byte[] System.Byte[])
    (static: System.String System.String System.Text.Encoding)
    (static: System.String System.String))
  (define-method-port
    seven-bit-clean?
    UnityEngine.WWWTranscoder
    SevenBitClean
    (static: System.Boolean System.Byte[])
    (static: System.Boolean System.String System.Text.Encoding)
    (static: System.Boolean System.String))
  (define-method-port
    encode
    UnityEngine.WWWTranscoder
    Encode
    (static:
      System.Byte[]
      System.Byte[]
      System.Byte
      System.Byte
      System.Byte[]
      System.Boolean)))
