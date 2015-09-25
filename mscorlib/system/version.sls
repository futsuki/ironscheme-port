(library (system version)
  (export new
          is?
          version?
          get-hash-code
          to-string
          compare-to
          clone
          equals?
          build
          major
          minor
          revision
          major-revision
          minor-revision)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e () ((_ a ...) #'(clr-new System.Version a ...)))))
  (define (is? a) (clr-is System.Version a))
  (define (version? a) (clr-is System.Version a))
  (define-method-port
    get-hash-code
    System.Version
    GetHashCode
    (System.Int32))
  (define-method-port
    to-string
    System.Version
    ToString
    (System.String System.Int32)
    (System.String))
  (define-method-port
    compare-to
    System.Version
    CompareTo
    (System.Int32 System.Version)
    (System.Int32 System.Object))
  (define-method-port clone System.Version Clone (System.Object))
  (define-method-port
    equals?
    System.Version
    Equals
    (System.Boolean System.Version)
    (System.Boolean System.Object))
  (define-field-port
    build
    #f
    #f
    (property:)
    System.Version
    Build
    System.Int32)
  (define-field-port
    major
    #f
    #f
    (property:)
    System.Version
    Major
    System.Int32)
  (define-field-port
    minor
    #f
    #f
    (property:)
    System.Version
    Minor
    System.Int32)
  (define-field-port
    revision
    #f
    #f
    (property:)
    System.Version
    Revision
    System.Int32)
  (define-field-port
    major-revision
    #f
    #f
    (property:)
    System.Version
    MajorRevision
    System.Int16)
  (define-field-port
    minor-revision
    #f
    #f
    (property:)
    System.Version
    MinorRevision
    System.Int16))
