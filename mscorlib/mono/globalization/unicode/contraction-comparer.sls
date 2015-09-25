(library (mono globalization unicode contraction-comparer)
  (export new is? contraction-comparer? compare instance)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Mono.Globalization.Unicode.ContractionComparer
             a
             ...)))))
  (define (is? a)
    (clr-is Mono.Globalization.Unicode.ContractionComparer a))
  (define (contraction-comparer? a)
    (clr-is Mono.Globalization.Unicode.ContractionComparer a))
  (define-method-port
    compare
    Mono.Globalization.Unicode.ContractionComparer
    Compare
    (System.Int32 System.Object System.Object))
  (define-field-port
    instance
    #f
    #f
    (static:)
    Mono.Globalization.Unicode.ContractionComparer
    Instance
    Mono.Globalization.Unicode.ContractionComparer))
