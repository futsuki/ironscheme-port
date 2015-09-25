(library (system text decoder-replacement-fallback-buffer)
  (export new
          is?
          decoder-replacement-fallback-buffer?
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
             System.Text.DecoderReplacementFallbackBuffer
             a
             ...)))))
  (define (is? a)
    (clr-is System.Text.DecoderReplacementFallbackBuffer a))
  (define (decoder-replacement-fallback-buffer? a)
    (clr-is System.Text.DecoderReplacementFallbackBuffer a))
  (define-method-port
    move-previous?
    System.Text.DecoderReplacementFallbackBuffer
    MovePrevious
    (System.Boolean))
  (define-method-port
    fallback?
    System.Text.DecoderReplacementFallbackBuffer
    Fallback
    (System.Boolean System.Byte[] System.Int32))
  (define-method-port
    get-next-char
    System.Text.DecoderReplacementFallbackBuffer
    GetNextChar
    (System.Char))
  (define-method-port
    reset
    System.Text.DecoderReplacementFallbackBuffer
    Reset
    (System.Void))
  (define-field-port
    remaining
    #f
    #f
    (property:)
    System.Text.DecoderReplacementFallbackBuffer
    Remaining
    System.Int32))
