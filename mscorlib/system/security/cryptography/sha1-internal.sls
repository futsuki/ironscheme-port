(library (system security cryptography sha1-internal)
  (export new is? sha1-internal? initialize hash-final hash-core)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Security.Cryptography.SHA1Internal a ...)))))
  (define (is? a) (clr-is System.Security.Cryptography.SHA1Internal a))
  (define (sha1-internal? a)
    (clr-is System.Security.Cryptography.SHA1Internal a))
  (define-method-port
    initialize
    System.Security.Cryptography.SHA1Internal
    Initialize
    (System.Void))
  (define-method-port
    hash-final
    System.Security.Cryptography.SHA1Internal
    HashFinal
    (System.Byte[]))
  (define-method-port
    hash-core
    System.Security.Cryptography.SHA1Internal
    HashCore
    (System.Void System.Byte[] System.Int32 System.Int32)))
