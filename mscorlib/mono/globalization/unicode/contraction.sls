(library (mono globalization unicode contraction)
  (export new is? contraction? source replacement sort-key)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Globalization.Unicode.Contraction a ...)))))
  (define (is? a) (clr-is Mono.Globalization.Unicode.Contraction a))
  (define (contraction? a)
    (clr-is Mono.Globalization.Unicode.Contraction a))
  (define-field-port
    source
    #f
    #f
    ()
    Mono.Globalization.Unicode.Contraction
    Source
    System.Char[])
  (define-field-port
    replacement
    #f
    #f
    ()
    Mono.Globalization.Unicode.Contraction
    Replacement
    System.String)
  (define-field-port
    sort-key
    #f
    #f
    ()
    Mono.Globalization.Unicode.Contraction
    SortKey
    System.Byte[]))
