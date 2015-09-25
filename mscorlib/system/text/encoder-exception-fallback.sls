(library (system text encoder-exception-fallback)
  (export new
          is?
          encoder-exception-fallback?
          get-hash-code
          equals?
          create-fallback-buffer
          max-char-count)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Text.EncoderExceptionFallback a ...)))))
  (define (is? a) (clr-is System.Text.EncoderExceptionFallback a))
  (define (encoder-exception-fallback? a)
    (clr-is System.Text.EncoderExceptionFallback a))
  (define-method-port
    get-hash-code
    System.Text.EncoderExceptionFallback
    GetHashCode
    (System.Int32))
  (define-method-port
    equals?
    System.Text.EncoderExceptionFallback
    Equals
    (System.Boolean System.Object))
  (define-method-port
    create-fallback-buffer
    System.Text.EncoderExceptionFallback
    CreateFallbackBuffer
    (System.Text.EncoderFallbackBuffer))
  (define-field-port
    max-char-count
    #f
    #f
    (property:)
    System.Text.EncoderExceptionFallback
    MaxCharCount
    System.Int32))
