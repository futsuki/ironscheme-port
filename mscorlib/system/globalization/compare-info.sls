(library (system globalization compare-info)
  (export is?
          compare-info?
          get-hash-code
          is-sortable?
          last-index-of
          get-sort-key
          to-string
          is-prefix?
          index-of
          get-compare-info
          is-suffix?
          compare
          equals?
          lcid
          name)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Globalization.CompareInfo a))
  (define (compare-info? a) (clr-is System.Globalization.CompareInfo a))
  (define-method-port
    get-hash-code
    System.Globalization.CompareInfo
    GetHashCode
    (System.Int32))
  (define-method-port
    is-sortable?
    System.Globalization.CompareInfo
    IsSortable
    (static: System.Boolean System.String)
    (static: System.Boolean System.Char))
  (define-method-port
    last-index-of
    System.Globalization.CompareInfo
    LastIndexOf
    (System.Int32
      System.String
      System.String
      System.Int32
      System.Int32
      System.Globalization.CompareOptions)
    (System.Int32
      System.String
      System.Char
      System.Int32
      System.Int32
      System.Globalization.CompareOptions)
    (System.Int32 System.String System.String System.Int32 System.Int32)
    (System.Int32
      System.String
      System.String
      System.Int32
      System.Globalization.CompareOptions)
    (System.Int32 System.String System.Char System.Int32 System.Int32)
    (System.Int32
      System.String
      System.Char
      System.Int32
      System.Globalization.CompareOptions)
    (System.Int32 System.String System.String System.Int32)
    (System.Int32
      System.String
      System.String
      System.Globalization.CompareOptions)
    (System.Int32 System.String System.Char System.Int32)
    (System.Int32
      System.String
      System.Char
      System.Globalization.CompareOptions)
    (System.Int32 System.String System.String)
    (System.Int32 System.String System.Char))
  (define-method-port
    get-sort-key
    System.Globalization.CompareInfo
    GetSortKey
    (System.Globalization.SortKey
      System.String
      System.Globalization.CompareOptions)
    (System.Globalization.SortKey System.String))
  (define-method-port
    to-string
    System.Globalization.CompareInfo
    ToString
    (System.String))
  (define-method-port
    is-prefix?
    System.Globalization.CompareInfo
    IsPrefix
    (System.Boolean
      System.String
      System.String
      System.Globalization.CompareOptions)
    (System.Boolean System.String System.String))
  (define-method-port
    index-of
    System.Globalization.CompareInfo
    IndexOf
    (System.Int32
      System.String
      System.String
      System.Int32
      System.Int32
      System.Globalization.CompareOptions)
    (System.Int32
      System.String
      System.Char
      System.Int32
      System.Int32
      System.Globalization.CompareOptions)
    (System.Int32 System.String System.String System.Int32 System.Int32)
    (System.Int32
      System.String
      System.String
      System.Int32
      System.Globalization.CompareOptions)
    (System.Int32 System.String System.Char System.Int32 System.Int32)
    (System.Int32
      System.String
      System.Char
      System.Int32
      System.Globalization.CompareOptions)
    (System.Int32 System.String System.String System.Int32)
    (System.Int32
      System.String
      System.String
      System.Globalization.CompareOptions)
    (System.Int32 System.String System.Char System.Int32)
    (System.Int32
      System.String
      System.Char
      System.Globalization.CompareOptions)
    (System.Int32 System.String System.String)
    (System.Int32 System.String System.Char))
  (define-method-port
    get-compare-info
    System.Globalization.CompareInfo
    GetCompareInfo
    (static:
      System.Globalization.CompareInfo
      System.String
      System.Reflection.Assembly)
    (static:
      System.Globalization.CompareInfo
      System.Int32
      System.Reflection.Assembly)
    (static: System.Globalization.CompareInfo System.String)
    (static: System.Globalization.CompareInfo System.Int32))
  (define-method-port
    is-suffix?
    System.Globalization.CompareInfo
    IsSuffix
    (System.Boolean
      System.String
      System.String
      System.Globalization.CompareOptions)
    (System.Boolean System.String System.String))
  (define-method-port
    compare
    System.Globalization.CompareInfo
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
      System.Int32
      System.Int32
      System.String
      System.Int32
      System.Int32)
    (System.Int32
      System.String
      System.Int32
      System.String
      System.Int32
      System.Globalization.CompareOptions)
    (System.Int32 System.String System.Int32 System.String System.Int32)
    (System.Int32
      System.String
      System.String
      System.Globalization.CompareOptions)
    (System.Int32 System.String System.String))
  (define-method-port
    equals?
    System.Globalization.CompareInfo
    Equals
    (System.Boolean System.Object))
  (define-field-port
    lcid
    #f
    #f
    (property:)
    System.Globalization.CompareInfo
    LCID
    System.Int32)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Globalization.CompareInfo
    Name
    System.String))
