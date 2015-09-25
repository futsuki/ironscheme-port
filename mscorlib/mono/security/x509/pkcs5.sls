(library (mono security x509 pkcs5)
  (export new
          is?
          pkcs5?
          pbe-with-md2-and-descbc
          pbe-with-md5-and-descbc
          pbe-with-md2-and-rc2-cbc
          pbe-with-md5-and-rc2-cbc
          pbe-with-sha1-and-descbc
          pbe-with-sha1-and-rc2-cbc)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Security.X509.PKCS5 a ...)))))
  (define (is? a) (clr-is Mono.Security.X509.PKCS5 a))
  (define (pkcs5? a) (clr-is Mono.Security.X509.PKCS5 a))
  (define-field-port
    pbe-with-md2-and-descbc
    #f
    #f
    (static:)
    Mono.Security.X509.PKCS5
    pbeWithMD2AndDESCBC
    System.String)
  (define-field-port
    pbe-with-md5-and-descbc
    #f
    #f
    (static:)
    Mono.Security.X509.PKCS5
    pbeWithMD5AndDESCBC
    System.String)
  (define-field-port
    pbe-with-md2-and-rc2-cbc
    #f
    #f
    (static:)
    Mono.Security.X509.PKCS5
    pbeWithMD2AndRC2CBC
    System.String)
  (define-field-port
    pbe-with-md5-and-rc2-cbc
    #f
    #f
    (static:)
    Mono.Security.X509.PKCS5
    pbeWithMD5AndRC2CBC
    System.String)
  (define-field-port
    pbe-with-sha1-and-descbc
    #f
    #f
    (static:)
    Mono.Security.X509.PKCS5
    pbeWithSHA1AndDESCBC
    System.String)
  (define-field-port
    pbe-with-sha1-and-rc2-cbc
    #f
    #f
    (static:)
    Mono.Security.X509.PKCS5
    pbeWithSHA1AndRC2CBC
    System.String))
