(library (system text encoder-fallback-exception)
  (export new
          is?
          encoder-fallback-exception?
          is-unknown-surrogate?
          char-unknown
          char-unknown-high
          char-unknown-low
          index)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Text.EncoderFallbackException a ...)))))
  (define (is? a) (clr-is System.Text.EncoderFallbackException a))
  (define (encoder-fallback-exception? a)
    (clr-is System.Text.EncoderFallbackException a))
  (define-method-port
    is-unknown-surrogate?
    System.Text.EncoderFallbackException
    IsUnknownSurrogate
    (System.Boolean))
  (define-field-port
    char-unknown
    #f
    #f
    (property:)
    System.Text.EncoderFallbackException
    CharUnknown
    System.Char)
  (define-field-port
    char-unknown-high
    #f
    #f
    (property:)
    System.Text.EncoderFallbackException
    CharUnknownHigh
    System.Char)
  (define-field-port
    char-unknown-low
    #f
    #f
    (property:)
    System.Text.EncoderFallbackException
    CharUnknownLow
    System.Char)
  (define-field-port
    index
    #f
    #f
    (property:)
    System.Text.EncoderFallbackException
    Index
    System.Int32))
