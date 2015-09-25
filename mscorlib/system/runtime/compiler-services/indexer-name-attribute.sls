(library (system runtime compiler-services indexer-name-attribute)
  (export new is? indexer-name-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.CompilerServices.IndexerNameAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.CompilerServices.IndexerNameAttribute a))
  (define (indexer-name-attribute? a)
    (clr-is System.Runtime.CompilerServices.IndexerNameAttribute a)))
