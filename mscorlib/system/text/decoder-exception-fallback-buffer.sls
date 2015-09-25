(library (system text decoder-exception-fallback-buffer)
  (export new
          is?
          decoder-exception-fallback-buffer?
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
             System.Text.DecoderExceptionFallbackBuffer
             a
             ...)))))
  (define (is? a) (clr-is System.Text.DecoderExceptionFallbackBuffer a))
  (define (decoder-exception-fallback-buffer? a)
    (clr-is System.Text.DecoderExceptionFallbackBuffer a))
  (define-method-port
    move-previous?
    System.Text.DecoderExceptionFallbackBuffer
    MovePrevious
    (System.Boolean))
  (define-method-port
    fallback?
    System.Text.DecoderExceptionFallbackBuffer
    Fallback
    (System.Boolean System.Byte[] System.Int32))
  (define-method-port
    get-next-char
    System.Text.DecoderExceptionFallbackBuffer
    GetNextChar
    (System.Char))
  (define-field-port
    remaining
    #f
    #f
    (property:)
    System.Text.DecoderExceptionFallbackBuffer
    Remaining
    System.Int32))
