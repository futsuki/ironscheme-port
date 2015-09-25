(library (system text encoder-replacement-fallback-buffer)
  (export new
          is?
          encoder-replacement-fallback-buffer?
          move-previous?
          fallback?
          get-next-char
          reset
          remaining)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Text.EncoderReplacementFallbackBuffer
             a
             ...)))))
  (define (is? a)
    (clr-is System.Text.EncoderReplacementFallbackBuffer a))
  (define (encoder-replacement-fallback-buffer? a)
    (clr-is System.Text.EncoderReplacementFallbackBuffer a))
  (define-method-port
    move-previous?
    System.Text.EncoderReplacementFallbackBuffer
    MovePrevious
    (System.Boolean))
  (define-method-port
    fallback?
    System.Text.EncoderReplacementFallbackBuffer
    Fallback
    (System.Boolean System.Char System.Char System.Int32)
    (System.Boolean System.Char System.Int32))
  (define-method-port
    get-next-char
    System.Text.EncoderReplacementFallbackBuffer
    GetNextChar
    (System.Char))
  (define-method-port
    reset
    System.Text.EncoderReplacementFallbackBuffer
    Reset
    (System.Void))
  (define-field-port
    remaining
    #f
    #f
    (property:)
    System.Text.EncoderReplacementFallbackBuffer
    Remaining
    System.Int32))
