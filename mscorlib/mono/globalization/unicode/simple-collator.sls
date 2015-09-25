(library (mono globalization unicode simple-collator)
  (export new
          is?
          simple-collator?
          last-index-of
          get-sort-key
          is-prefix?
          index-of
          is-suffix?
          compare)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Globalization.Unicode.SimpleCollator a ...)))))
  (define (is? a) (clr-is Mono.Globalization.Unicode.SimpleCollator a))
  (define (simple-collator? a)
    (clr-is Mono.Globalization.Unicode.SimpleCollator a))
  (define-method-port
    last-index-of
    Mono.Globalization.Unicode.SimpleCollator
    LastIndexOf
    (System.Int32
      System.String
      System.Char
      System.Int32
      System.Int32
      System.Globalization.CompareOptions)
    (System.Int32
      System.String
      System.Char
      System.Globalization.CompareOptions)
    (System.Int32
      System.String
      System.String
      System.Int32
      System.Int32
      System.Globalization.CompareOptions)
    (System.Int32
      System.String
      System.String
      System.Globalization.CompareOptions))
  (define-method-port
    get-sort-key
    Mono.Globalization.Unicode.SimpleCollator
    GetSortKey
    (System.Globalization.SortKey
      System.String
      System.Int32
      System.Int32
      System.Globalization.CompareOptions)
    (System.Globalization.SortKey
      System.String
      System.Globalization.CompareOptions)
    (System.Globalization.SortKey System.String))
  (define-method-port
    is-prefix?
    Mono.Globalization.Unicode.SimpleCollator
    IsPrefix
    (System.Boolean
      System.String
      System.String
      System.Int32
      System.Int32
      System.Globalization.CompareOptions)
    (System.Boolean
      System.String
      System.String
      System.Globalization.CompareOptions))
  (define-method-port
    index-of
    Mono.Globalization.Unicode.SimpleCollator
    IndexOf
    (System.Int32
      System.String
      System.Char
      System.Int32
      System.Int32
      System.Globalization.CompareOptions)
    (System.Int32
      System.String
      System.Char
      System.Globalization.CompareOptions)
    (System.Int32
      System.String
      System.String
      System.Int32
      System.Int32
      System.Globalization.CompareOptions)
    (System.Int32
      System.String
      System.String
      System.Globalization.CompareOptions))
  (define-method-port
    is-suffix?
    Mono.Globalization.Unicode.SimpleCollator
    IsSuffix
    (System.Boolean
      System.String
      System.String
      System.Int32
      System.Int32
      System.Globalization.CompareOptions)
    (System.Boolean
      System.String
      System.String
      System.Globalization.CompareOptions))
  (define-method-port
    compare
    Mono.Globalization.Unicode.SimpleCollator
    Compare
    (System.Int32
      System.String
      System.Int32
      System.Int32
      System.String
      System.Int32
      System.Int32
      System.Globalization.CompareOptions)
    (System.Int32
      System.String
      System.String
      System.Globalization.CompareOptions)
    (System.Int32 System.String System.String)))
