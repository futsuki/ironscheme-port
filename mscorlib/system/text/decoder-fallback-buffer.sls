(library (system text decoder-fallback-buffer)
  (export is?
          decoder-fallback-buffer?
          move-previous?
          fallback?
          get-next-char
          reset
          remaining)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Text.DecoderFallbackBuffer a))
  (define (decoder-fallback-buffer? a)
    (clr-is System.Text.DecoderFallbackBuffer a))
  (define-method-port
    move-previous?
    System.Text.DecoderFallbackBuffer
    MovePrevious
    (System.Boolean))
  (define-method-port
    fallback?
    System.Text.DecoderFallbackBuffer
    Fallback
    (System.Boolean System.Byte[] System.Int32))
  (define-method-port
    get-next-char
    System.Text.DecoderFallbackBuffer
    GetNextChar
    (System.Char))
  (define-method-port
    reset
    System.Text.DecoderFallbackBuffer
    Reset
    (System.Void))
  (define-field-port
    remaining
    #f
    #f
    (property:)
    System.Text.DecoderFallbackBuffer
    Remaining
    System.Int32))
