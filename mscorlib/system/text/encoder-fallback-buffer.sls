(library (system text encoder-fallback-buffer)
  (export is?
          encoder-fallback-buffer?
          move-previous?
          fallback?
          get-next-char
          reset
          remaining)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Text.EncoderFallbackBuffer a))
  (define (encoder-fallback-buffer? a)
    (clr-is System.Text.EncoderFallbackBuffer a))
  (define-method-port
    move-previous?
    System.Text.EncoderFallbackBuffer
    MovePrevious
    (System.Boolean))
  (define-method-port
    fallback?
    System.Text.EncoderFallbackBuffer
    Fallback
    (System.Boolean System.Char System.Char System.Int32)
    (System.Boolean System.Char System.Int32))
  (define-method-port
    get-next-char
    System.Text.EncoderFallbackBuffer
    GetNextChar
    (System.Char))
  (define-method-port
    reset
    System.Text.EncoderFallbackBuffer
    Reset
    (System.Void))
  (define-field-port
    remaining
    #f
    #f
    (property:)
    System.Text.EncoderFallbackBuffer
    Remaining
    System.Int32))
