(library (mono globalization unicode normalization-table-util)
  (export new
          is?
          normalization-table-util?
          cb-cp
          map-cp
          prop-idx
          prop-cp
          map-idx
          cb-idx
          prop
          map
          combining
          composite
          helper
          prop-count
          map-count)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Mono.Globalization.Unicode.NormalizationTableUtil
             a
             ...)))))
  (define (is? a)
    (clr-is Mono.Globalization.Unicode.NormalizationTableUtil a))
  (define (normalization-table-util? a)
    (clr-is Mono.Globalization.Unicode.NormalizationTableUtil a))
  (define-method-port
    cb-cp
    Mono.Globalization.Unicode.NormalizationTableUtil
    CbCP
    (static: System.Int32 System.Int32))
  (define-method-port
    map-cp
    Mono.Globalization.Unicode.NormalizationTableUtil
    MapCP
    (static: System.Int32 System.Int32))
  (define-method-port
    prop-idx
    Mono.Globalization.Unicode.NormalizationTableUtil
    PropIdx
    (static: System.Int32 System.Int32))
  (define-method-port
    prop-cp
    Mono.Globalization.Unicode.NormalizationTableUtil
    PropCP
    (static: System.Int32 System.Int32))
  (define-method-port
    map-idx
    Mono.Globalization.Unicode.NormalizationTableUtil
    MapIdx
    (static: System.Int32 System.Int32))
  (define-method-port
    cb-idx
    Mono.Globalization.Unicode.NormalizationTableUtil
    CbIdx
    (static: System.Int32 System.Int32))
  (define-field-port
    prop
    #f
    #f
    (static:)
    Mono.Globalization.Unicode.NormalizationTableUtil
    Prop
    Mono.Globalization.Unicode.CodePointIndexer)
  (define-field-port
    map
    #f
    #f
    (static:)
    Mono.Globalization.Unicode.NormalizationTableUtil
    Map
    Mono.Globalization.Unicode.CodePointIndexer)
  (define-field-port
    combining
    #f
    #f
    (static:)
    Mono.Globalization.Unicode.NormalizationTableUtil
    Combining
    Mono.Globalization.Unicode.CodePointIndexer)
  (define-field-port
    composite
    #f
    #f
    (static:)
    Mono.Globalization.Unicode.NormalizationTableUtil
    Composite
    Mono.Globalization.Unicode.CodePointIndexer)
  (define-field-port
    helper
    #f
    #f
    (static:)
    Mono.Globalization.Unicode.NormalizationTableUtil
    Helper
    Mono.Globalization.Unicode.CodePointIndexer)
  (define-field-port
    prop-count
    #f
    #f
    (static: property:)
    Mono.Globalization.Unicode.NormalizationTableUtil
    PropCount
    System.Int32)
  (define-field-port
    map-count
    #f
    #f
    (static: property:)
    Mono.Globalization.Unicode.NormalizationTableUtil
    MapCount
    System.Int32))
