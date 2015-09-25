(library (system globalization sort-key)
  (export is?
          sort-key?
          get-hash-code
          to-string
          compare
          equals?
          original-string
          key-data)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Globalization.SortKey a))
  (define (sort-key? a) (clr-is System.Globalization.SortKey a))
  (define-method-port
    get-hash-code
    System.Globalization.SortKey
    GetHashCode
    (System.Int32))
  (define-method-port
    to-string
    System.Globalization.SortKey
    ToString
    (System.String))
  (define-method-port
    compare
    System.Globalization.SortKey
    Compare
    (static:
      System.Int32
      System.Globalization.SortKey
      System.Globalization.SortKey))
  (define-method-port
    equals?
    System.Globalization.SortKey
    Equals
    (System.Boolean System.Object))
  (define-field-port
    original-string
    #f
    #f
    (property:)
    System.Globalization.SortKey
    OriginalString
    System.String)
  (define-field-port
    key-data
    #f
    #f
    (property:)
    System.Globalization.SortKey
    KeyData
    System.Byte[]))
