(library (system text decoder-fallback-exception)
  (export new is? decoder-fallback-exception? bytes-unknown index)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Text.DecoderFallbackException a ...)))))
  (define (is? a) (clr-is System.Text.DecoderFallbackException a))
  (define (decoder-fallback-exception? a)
    (clr-is System.Text.DecoderFallbackException a))
  (define-field-port
    bytes-unknown
    #f
    #f
    (property:)
    System.Text.DecoderFallbackException
    BytesUnknown
    System.Byte[])
  (define-field-port
    index
    #f
    #f
    (property:)
    System.Text.DecoderFallbackException
    Index
    System.Int32))
