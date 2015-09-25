(library (system security cryptography key-sizes)
  (export new is? key-sizes? max-size min-size skip-size)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Security.Cryptography.KeySizes a ...)))))
  (define (is? a) (clr-is System.Security.Cryptography.KeySizes a))
  (define (key-sizes? a)
    (clr-is System.Security.Cryptography.KeySizes a))
  (define-field-port
    max-size
    #f
    #f
    (property:)
    System.Security.Cryptography.KeySizes
    MaxSize
    System.Int32)
  (define-field-port
    min-size
    #f
    #f
    (property:)
    System.Security.Cryptography.KeySizes
    MinSize
    System.Int32)
  (define-field-port
    skip-size
    #f
    #f
    (property:)
    System.Security.Cryptography.KeySizes
    SkipSize
    System.Int32))
