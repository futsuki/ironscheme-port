(library (system text decoder-fallback)
  (export is?
          decoder-fallback?
          create-fallback-buffer
          exception-fallback
          max-char-count
          replacement-fallback)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Text.DecoderFallback a))
  (define (decoder-fallback? a) (clr-is System.Text.DecoderFallback a))
  (define-method-port
    create-fallback-buffer
    System.Text.DecoderFallback
    CreateFallbackBuffer
    (System.Text.DecoderFallbackBuffer))
  (define-field-port
    exception-fallback
    #f
    #f
    (static: property:)
    System.Text.DecoderFallback
    ExceptionFallback
    System.Text.DecoderFallback)
  (define-field-port
    max-char-count
    #f
    #f
    (property:)
    System.Text.DecoderFallback
    MaxCharCount
    System.Int32)
  (define-field-port
    replacement-fallback
    #f
    #f
    (static: property:)
    System.Text.DecoderFallback
    ReplacementFallback
    System.Text.DecoderFallback))
