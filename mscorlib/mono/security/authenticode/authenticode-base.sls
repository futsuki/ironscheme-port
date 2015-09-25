(library (mono security authenticode authenticode-base)
  (export new is? authenticode-base? spc-indirect-data-context)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Mono.Security.Authenticode.AuthenticodeBase
             a
             ...)))))
  (define (is? a)
    (clr-is Mono.Security.Authenticode.AuthenticodeBase a))
  (define (authenticode-base? a)
    (clr-is Mono.Security.Authenticode.AuthenticodeBase a))
  (define-field-port
    spc-indirect-data-context
    #f
    #f
    (static:)
    Mono.Security.Authenticode.AuthenticodeBase
    spcIndirectDataContext
    System.String))
