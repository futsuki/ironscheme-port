(library (system globalization idn-mapping)
  (export new
          is?
          idn-mapping?
          get-hash-code
          get-unicode
          get-ascii
          equals?
          allow-unassigned?-get
          allow-unassigned?-set!
          allow-unassigned?-update!
          use-std3-ascii-rules?-get
          use-std3-ascii-rules?-set!
          use-std3-ascii-rules?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Globalization.IdnMapping a ...)))))
  (define (is? a) (clr-is System.Globalization.IdnMapping a))
  (define (idn-mapping? a) (clr-is System.Globalization.IdnMapping a))
  (define-method-port
    get-hash-code
    System.Globalization.IdnMapping
    GetHashCode
    (System.Int32))
  (define-method-port
    get-unicode
    System.Globalization.IdnMapping
    GetUnicode
    (System.String System.String System.Int32 System.Int32)
    (System.String System.String System.Int32)
    (System.String System.String))
  (define-method-port
    get-ascii
    System.Globalization.IdnMapping
    GetAscii
    (System.String System.String System.Int32 System.Int32)
    (System.String System.String System.Int32)
    (System.String System.String))
  (define-method-port
    equals?
    System.Globalization.IdnMapping
    Equals
    (System.Boolean System.Object))
  (define-field-port
    allow-unassigned?-get
    allow-unassigned?-set!
    allow-unassigned?-update!
    (property:)
    System.Globalization.IdnMapping
    AllowUnassigned
    System.Boolean)
  (define-field-port
    use-std3-ascii-rules?-get
    use-std3-ascii-rules?-set!
    use-std3-ascii-rules?-update!
    (property:)
    System.Globalization.IdnMapping
    UseStd3AsciiRules
    System.Boolean))
