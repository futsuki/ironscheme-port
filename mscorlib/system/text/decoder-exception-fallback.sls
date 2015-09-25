(library (system text decoder-exception-fallback)
  (export new
          is?
          decoder-exception-fallback?
          get-hash-code
          equals?
          create-fallback-buffer
          max-char-count)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Text.DecoderExceptionFallback a ...)))))
  (define (is? a) (clr-is System.Text.DecoderExceptionFallback a))
  (define (decoder-exception-fallback? a)
    (clr-is System.Text.DecoderExceptionFallback a))
  (define-method-port
    get-hash-code
    System.Text.DecoderExceptionFallback
    GetHashCode
    (System.Int32))
  (define-method-port
    equals?
    System.Text.DecoderExceptionFallback
    Equals
    (System.Boolean System.Object))
  (define-method-port
    create-fallback-buffer
    System.Text.DecoderExceptionFallback
    CreateFallbackBuffer
    (System.Text.DecoderFallbackBuffer))
  (define-field-port
    max-char-count
    #f
    #f
    (property:)
    System.Text.DecoderExceptionFallback
    MaxCharCount
    System.Int32))
