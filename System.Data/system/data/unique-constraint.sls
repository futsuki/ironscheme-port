(library (system data unique-constraint)
  (export new
          is?
          unique-constraint?
          get-hash-code
          equals?
          columns
          is-primary-key?
          table)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Data.UniqueConstraint a ...)))))
  (define (is? a) (clr-is System.Data.UniqueConstraint a))
  (define (unique-constraint? a)
    (clr-is System.Data.UniqueConstraint a))
  (define-method-port
    get-hash-code
    System.Data.UniqueConstraint
    GetHashCode
    (System.Int32))
  (define-method-port
    equals?
    System.Data.UniqueConstraint
    Equals
    (System.Boolean System.Object))
  (define-field-port
    columns
    #f
    #f
    (property:)
    System.Data.UniqueConstraint
    Columns
    System.Data.DataColumn[])
  (define-field-port
    is-primary-key?
    #f
    #f
    (property:)
    System.Data.UniqueConstraint
    IsPrimaryKey
    System.Boolean)
  (define-field-port
    table
    #f
    #f
    (property:)
    System.Data.UniqueConstraint
    Table
    System.Data.DataTable))
