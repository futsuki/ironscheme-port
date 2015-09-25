(library (system data relation-structure)
  (export new
          is?
          relation-structure?
          explicit-name-get
          explicit-name-set!
          explicit-name-update!
          parent-table-name-get
          parent-table-name-set!
          parent-table-name-update!
          child-table-name-get
          child-table-name-set!
          child-table-name-update!
          parent-column-name-get
          parent-column-name-set!
          parent-column-name-update!
          child-column-name-get
          child-column-name-set!
          child-column-name-update!
          is-nested?-get
          is-nested?-set!
          is-nested?-update!
          create-constraint?-get
          create-constraint?-set!
          create-constraint?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Data.RelationStructure a ...)))))
  (define (is? a) (clr-is System.Data.RelationStructure a))
  (define (relation-structure? a)
    (clr-is System.Data.RelationStructure a))
  (define-field-port
    explicit-name-get
    explicit-name-set!
    explicit-name-update!
    ()
    System.Data.RelationStructure
    ExplicitName
    System.String)
  (define-field-port
    parent-table-name-get
    parent-table-name-set!
    parent-table-name-update!
    ()
    System.Data.RelationStructure
    ParentTableName
    System.String)
  (define-field-port
    child-table-name-get
    child-table-name-set!
    child-table-name-update!
    ()
    System.Data.RelationStructure
    ChildTableName
    System.String)
  (define-field-port
    parent-column-name-get
    parent-column-name-set!
    parent-column-name-update!
    ()
    System.Data.RelationStructure
    ParentColumnName
    System.String)
  (define-field-port
    child-column-name-get
    child-column-name-set!
    child-column-name-update!
    ()
    System.Data.RelationStructure
    ChildColumnName
    System.String)
  (define-field-port
    is-nested?-get
    is-nested?-set!
    is-nested?-update!
    ()
    System.Data.RelationStructure
    IsNested
    System.Boolean)
  (define-field-port
    create-constraint?-get
    create-constraint?-set!
    create-constraint?-update!
    ()
    System.Data.RelationStructure
    CreateConstraint
    System.Boolean))
