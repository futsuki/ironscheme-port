(library (mono
          security
          x509
          extensions
          subject-key-identifier-extension)
  (export new
          is?
          subject-key-identifier-extension?
          to-string
          name
          identifier)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Mono.Security.X509.Extensions.SubjectKeyIdentifierExtension
             a
             ...)))))
  (define (is? a)
    (clr-is
      Mono.Security.X509.Extensions.SubjectKeyIdentifierExtension
      a))
  (define (subject-key-identifier-extension? a)
    (clr-is
      Mono.Security.X509.Extensions.SubjectKeyIdentifierExtension
      a))
  (define-method-port
    to-string
    Mono.Security.X509.Extensions.SubjectKeyIdentifierExtension
    ToString
    (System.String))
  (define-field-port
    name
    #f
    #f
    (property:)
    Mono.Security.X509.Extensions.SubjectKeyIdentifierExtension
    Name
    System.String)
  (define-field-port
    identifier
    #f
    #f
    (property:)
    Mono.Security.X509.Extensions.SubjectKeyIdentifierExtension
    Identifier
    System.Byte[]))
