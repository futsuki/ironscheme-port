(library (mono globalization unicode code-point-indexer)
  (export new
          is?
          code-point-indexer?
          compress-array
          to-code-point
          to-index
          total-count)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Mono.Globalization.Unicode.CodePointIndexer
             a
             ...)))))
  (define (is? a)
    (clr-is Mono.Globalization.Unicode.CodePointIndexer a))
  (define (code-point-indexer? a)
    (clr-is Mono.Globalization.Unicode.CodePointIndexer a))
  (define-method-port
    compress-array
    Mono.Globalization.Unicode.CodePointIndexer
    CompressArray
    (static:
      System.Array
      System.Array
      System.Type
      Mono.Globalization.Unicode.CodePointIndexer))
  (define-method-port
    to-code-point
    Mono.Globalization.Unicode.CodePointIndexer
    ToCodePoint
    (System.Int32 System.Int32))
  (define-method-port
    to-index
    Mono.Globalization.Unicode.CodePointIndexer
    ToIndex
    (System.Int32 System.Int32))
  (define-field-port
    total-count
    #f
    #f
    ()
    Mono.Globalization.Unicode.CodePointIndexer
    TotalCount
    System.Int32))
