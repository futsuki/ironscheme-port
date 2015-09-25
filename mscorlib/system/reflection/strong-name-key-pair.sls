(library (system reflection strong-name-key-pair)
  (export new is? strong-name-key-pair? public-key)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Reflection.StrongNameKeyPair a ...)))))
  (define (is? a) (clr-is System.Reflection.StrongNameKeyPair a))
  (define (strong-name-key-pair? a)
    (clr-is System.Reflection.StrongNameKeyPair a))
  (define-field-port
    public-key
    #f
    #f
    (property:)
    System.Reflection.StrongNameKeyPair
    PublicKey
    System.Byte[]))
