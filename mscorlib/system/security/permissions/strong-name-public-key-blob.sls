(library (system security permissions strong-name-public-key-blob)
  (export new
          is?
          strong-name-public-key-blob?
          get-hash-code
          to-string
          equals?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Permissions.StrongNamePublicKeyBlob
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Permissions.StrongNamePublicKeyBlob a))
  (define (strong-name-public-key-blob? a)
    (clr-is System.Security.Permissions.StrongNamePublicKeyBlob a))
  (define-method-port
    get-hash-code
    System.Security.Permissions.StrongNamePublicKeyBlob
    GetHashCode
    (System.Int32))
  (define-method-port
    to-string
    System.Security.Permissions.StrongNamePublicKeyBlob
    ToString
    (System.String))
  (define-method-port
    equals?
    System.Security.Permissions.StrongNamePublicKeyBlob
    Equals
    (System.Boolean System.Object)))
