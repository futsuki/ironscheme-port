(library (mono globalization unicode level2-map-comparer)
  (export new is? level2-map-comparer? compare instance)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Mono.Globalization.Unicode.Level2MapComparer
             a
             ...)))))
  (define (is? a)
    (clr-is Mono.Globalization.Unicode.Level2MapComparer a))
  (define (level2-map-comparer? a)
    (clr-is Mono.Globalization.Unicode.Level2MapComparer a))
  (define-method-port
    compare
    Mono.Globalization.Unicode.Level2MapComparer
    Compare
    (System.Int32 System.Object System.Object))
  (define-field-port
    instance
    #f
    #f
    (static:)
    Mono.Globalization.Unicode.Level2MapComparer
    Instance
    Mono.Globalization.Unicode.Level2MapComparer))
