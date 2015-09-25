(library (system data foreign-key-constraint)
  (export new
          is?
          foreign-key-constraint?
          get-hash-code
          equals?
          accept-reject-rule-get
          accept-reject-rule-set!
          accept-reject-rule-update!
          columns
          delete-rule-get
          delete-rule-set!
          delete-rule-update!
          update-rule-get
          update-rule-set!
          update-rule-update!
          related-columns
          related-table
          table)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.ForeignKeyConstraint a ...)))))
  (define (is? a) (clr-is System.Data.ForeignKeyConstraint a))
  (define (foreign-key-constraint? a)
    (clr-is System.Data.ForeignKeyConstraint a))
  (define-method-port
    get-hash-code
    System.Data.ForeignKeyConstraint
    GetHashCode
    (System.Int32))
  (define-method-port
    equals?
    System.Data.ForeignKeyConstraint
    Equals
    (System.Boolean System.Object))
  (define-field-port
    accept-reject-rule-get
    accept-reject-rule-set!
    accept-reject-rule-update!
    (property:)
    System.Data.ForeignKeyConstraint
    AcceptRejectRule
    System.Data.AcceptRejectRule)
  (define-field-port
    columns
    #f
    #f
    (property:)
    System.Data.ForeignKeyConstraint
    Columns
    System.Data.DataColumn[])
  (define-field-port
    delete-rule-get
    delete-rule-set!
    delete-rule-update!
    (property:)
    System.Data.ForeignKeyConstraint
    DeleteRule
    System.Data.Rule)
  (define-field-port
    update-rule-get
    update-rule-set!
    update-rule-update!
    (property:)
    System.Data.ForeignKeyConstraint
    UpdateRule
    System.Data.Rule)
  (define-field-port
    related-columns
    #f
    #f
    (property:)
    System.Data.ForeignKeyConstraint
    RelatedColumns
    System.Data.DataColumn[])
  (define-field-port
    related-table
    #f
    #f
    (property:)
    System.Data.ForeignKeyConstraint
    RelatedTable
    System.Data.DataTable)
  (define-field-port
    table
    #f
    #f
    (property:)
    System.Data.ForeignKeyConstraint
    Table
    System.Data.DataTable))
