(library (system string-comparer)
  (export is?
          string-comparer?
          get-hash-code
          create
          compare
          equals?
          current-culture
          current-culture-ignore-case
          invariant-culture
          invariant-culture-ignore-case
          ordinal
          ordinal-ignore-case)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.StringComparer a))
  (define (string-comparer? a) (clr-is System.StringComparer a))
  (define-method-port
    get-hash-code
    System.StringComparer
    GetHashCode
    (System.Int32 System.String)
    (System.Int32 System.Object))
  (define-method-port
    create
    System.StringComparer
    Create
    (static:
      System.StringComparer
      System.Globalization.CultureInfo
      System.Boolean))
  (define-method-port
    compare
    System.StringComparer
    Compare
    (System.Int32 System.String System.String)
    (System.Int32 System.Object System.Object))
  (define-method-port
    equals?
    System.StringComparer
    Equals
    (System.Boolean System.String System.String)
    (System.Boolean System.Object System.Object))
  (define-field-port
    current-culture
    #f
    #f
    (static: property:)
    System.StringComparer
    CurrentCulture
    System.StringComparer)
  (define-field-port
    current-culture-ignore-case
    #f
    #f
    (static: property:)
    System.StringComparer
    CurrentCultureIgnoreCase
    System.StringComparer)
  (define-field-port
    invariant-culture
    #f
    #f
    (static: property:)
    System.StringComparer
    InvariantCulture
    System.StringComparer)
  (define-field-port
    invariant-culture-ignore-case
    #f
    #f
    (static: property:)
    System.StringComparer
    InvariantCultureIgnoreCase
    System.StringComparer)
  (define-field-port
    ordinal
    #f
    #f
    (static: property:)
    System.StringComparer
    Ordinal
    System.StringComparer)
  (define-field-port
    ordinal-ignore-case
    #f
    #f
    (static: property:)
    System.StringComparer
    OrdinalIgnoreCase
    System.StringComparer))
