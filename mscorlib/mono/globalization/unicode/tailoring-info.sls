(library (mono globalization unicode tailoring-info)
  (export new
          is?
          tailoring-info?
          lcid
          tailoring-index
          tailoring-count
          french-sort?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Globalization.Unicode.TailoringInfo a ...)))))
  (define (is? a) (clr-is Mono.Globalization.Unicode.TailoringInfo a))
  (define (tailoring-info? a)
    (clr-is Mono.Globalization.Unicode.TailoringInfo a))
  (define-field-port
    lcid
    #f
    #f
    ()
    Mono.Globalization.Unicode.TailoringInfo
    LCID
    System.Int32)
  (define-field-port
    tailoring-index
    #f
    #f
    ()
    Mono.Globalization.Unicode.TailoringInfo
    TailoringIndex
    System.Int32)
  (define-field-port
    tailoring-count
    #f
    #f
    ()
    Mono.Globalization.Unicode.TailoringInfo
    TailoringCount
    System.Int32)
  (define-field-port
    french-sort?
    #f
    #f
    ()
    Mono.Globalization.Unicode.TailoringInfo
    FrenchSort
    System.Boolean))
