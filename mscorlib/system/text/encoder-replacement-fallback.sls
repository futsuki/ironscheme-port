(library (system text encoder-replacement-fallback)
  (export new
          is?
          encoder-replacement-fallback?
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
         #'(clr-new System.Text.EncoderReplacementFallback a ...)))))
  (define (is? a) (clr-is System.Text.EncoderReplacementFallback a))
  (define (encoder-replacement-fallback? a)
    (clr-is System.Text.EncoderReplacementFallback a))
  (define-method-port
    get-hash-code
    System.Text.EncoderReplacementFallback
    GetHashCode
    (System.Int32))
  (define-method-port
    equals?
    System.Text.EncoderReplacementFallback
    Equals
    (System.Boolean System.Object))
  (define-method-port
    create-fallback-buffer
    System.Text.EncoderReplacementFallback
    CreateFallbackBuffer
    (System.Text.EncoderFallbackBuffer))
  (define-field-port
    default-string
    #f
    #f
    (property:)
    System.Text.EncoderReplacementFallback
    DefaultString
    System.String)
  (define-field-port
    max-char-count
    #f
    #f
    (property:)
    System.Text.EncoderReplacementFallback
    MaxCharCount
    System.Int32))
