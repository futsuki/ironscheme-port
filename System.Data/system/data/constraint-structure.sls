(library (system data constraint-structure)
  (export new
          is?
          constraint-structure?
          table-name
          columns
          is-attribute
          constraint-name
          is-primary-key?
          refer-name
          is-nested?
          is-constraint-only?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Data.ConstraintStructure a ...)))))
  (define (is? a) (clr-is System.Data.ConstraintStructure a))
  (define (constraint-structure? a)
    (clr-is System.Data.ConstraintStructure a))
  (define-field-port
    table-name
    #f
    #f
    ()
    System.Data.ConstraintStructure
    TableName
    System.String)
  (define-field-port
    columns
    #f
    #f
    ()
    System.Data.ConstraintStructure
    Columns
    System.String[])
  (define-field-port
    is-attribute
    #f
    #f
    ()
    System.Data.ConstraintStructure
    IsAttribute
    System.Boolean[])
  (define-field-port
    constraint-name
    #f
    #f
    ()
    System.Data.ConstraintStructure
    ConstraintName
    System.String)
  (define-field-port
    is-primary-key?
    #f
    #f
    ()
    System.Data.ConstraintStructure
    IsPrimaryKey
    System.Boolean)
  (define-field-port
    refer-name
    #f
    #f
    ()
    System.Data.ConstraintStructure
    ReferName
    System.String)
  (define-field-port
    is-nested?
    #f
    #f
    ()
    System.Data.ConstraintStructure
    IsNested
    System.Boolean)
  (define-field-port
    is-constraint-only?
    #f
    #f
    ()
    System.Data.ConstraintStructure
    IsConstraintOnly
    System.Boolean))
