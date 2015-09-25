(library (system data constraint)
  (export is?
          constraint?
          to-string
          constraint-name-get
          constraint-name-set!
          constraint-name-update!
          extended-properties
          table)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.Constraint a))
  (define (constraint? a) (clr-is System.Data.Constraint a))
  (define-method-port
    to-string
    System.Data.Constraint
    ToString
    (System.String))
  (define-field-port
    constraint-name-get
    constraint-name-set!
    constraint-name-update!
    (property:)
    System.Data.Constraint
    ConstraintName
    System.String)
  (define-field-port
    extended-properties
    #f
    #f
    (property:)
    System.Data.Constraint
    ExtendedProperties
    System.Data.PropertyCollection)
  (define-field-port
    table
    #f
    #f
    (property:)
    System.Data.Constraint
    Table
    System.Data.DataTable))
