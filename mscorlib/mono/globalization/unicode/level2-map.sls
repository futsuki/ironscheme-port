(library (mono globalization unicode level2-map)
  (export new
          is?
          level2-map?
          source-get
          source-set!
          source-update!
          replace-get
          replace-set!
          replace-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Globalization.Unicode.Level2Map a ...)))))
  (define (is? a) (clr-is Mono.Globalization.Unicode.Level2Map a))
  (define (level2-map? a)
    (clr-is Mono.Globalization.Unicode.Level2Map a))
  (define-field-port
    source-get
    source-set!
    source-update!
    ()
    Mono.Globalization.Unicode.Level2Map
    Source
    System.Byte)
  (define-field-port
    replace-get
    replace-set!
    replace-update!
    ()
    Mono.Globalization.Unicode.Level2Map
    Replace
    System.Byte))
