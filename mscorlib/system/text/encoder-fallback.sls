(library (system text encoder-fallback)
  (export is?
          encoder-fallback?
          create-fallback-buffer
          exception-fallback
          max-char-count
          replacement-fallback)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Text.EncoderFallback a))
  (define (encoder-fallback? a) (clr-is System.Text.EncoderFallback a))
  (define-method-port
    create-fallback-buffer
    System.Text.EncoderFallback
    CreateFallbackBuffer
    (System.Text.EncoderFallbackBuffer))
  (define-field-port
    exception-fallback
    #f
    #f
    (static: property:)
    System.Text.EncoderFallback
    ExceptionFallback
    System.Text.EncoderFallback)
  (define-field-port
    max-char-count
    #f
    #f
    (property:)
    System.Text.EncoderFallback
    MaxCharCount
    System.Int32)
  (define-field-port
    replacement-fallback
    #f
    #f
    (static: property:)
    System.Text.EncoderFallback
    ReplacementFallback
    System.Text.EncoderFallback))
