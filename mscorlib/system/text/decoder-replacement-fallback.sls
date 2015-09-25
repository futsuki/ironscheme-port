(library (system text decoder-replacement-fallback)
  (export new
          is?
          decoder-replacement-fallback?
          get-hash-code
          equals?
          create-fallback-buffer
          default-string
          max-char-count)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Text.DecoderReplacementFallback a ...)))))
  (define (is? a) (clr-is System.Text.DecoderReplacementFallback a))
  (define (decoder-replacement-fallback? a)
    (clr-is System.Text.DecoderReplacementFallback a))
  (define-method-port
    get-hash-code
    System.Text.DecoderReplacementFallback
    GetHashCode
    (System.Int32))
  (define-method-port
    equals?
    System.Text.DecoderReplacementFallback
    Equals
    (System.Boolean System.Object))
  (define-method-port
    create-fallback-buffer
    System.Text.DecoderReplacementFallback
    CreateFallbackBuffer
    (System.Text.DecoderFallbackBuffer))
  (define-field-port
    default-string
    #f
    #f
    (property:)
    System.Text.DecoderReplacementFallback
    DefaultString
    System.String)
  (define-field-port
    max-char-count
    #f
    #f
    (property:)
    System.Text.DecoderReplacementFallback
    MaxCharCount
    System.Int32))
