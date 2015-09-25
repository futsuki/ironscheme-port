(library (system text encoder-exception-fallback-buffer)
  (export new
          is?
          encoder-exception-fallback-buffer?
          move-previous?
          fallback?
          get-next-char
          remaining)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Text.EncoderExceptionFallbackBuffer
             a
             ...)))))
  (define (is? a) (clr-is System.Text.EncoderExceptionFallbackBuffer a))
  (define (encoder-exception-fallback-buffer? a)
    (clr-is System.Text.EncoderExceptionFallbackBuffer a))
  (define-method-port
    move-previous?
    System.Text.EncoderExceptionFallbackBuffer
    MovePrevious
    (System.Boolean))
  (define-method-port
    fallback?
    System.Text.EncoderExceptionFallbackBuffer
    Fallback
    (System.Boolean System.Char System.Char System.Int32)
    (System.Boolean System.Char System.Int32))
  (define-method-port
    get-next-char
    System.Text.EncoderExceptionFallbackBuffer
    GetNextChar
    (System.Char))
  (define-field-port
    remaining
    #f
    #f
    (property:)
    System.Text.EncoderExceptionFallbackBuffer
    Remaining
    System.Int32))
