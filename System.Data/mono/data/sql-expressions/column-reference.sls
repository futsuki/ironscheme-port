(library (mono data sql-expressions column-reference)
  (export new
          is?
          column-reference?
          get-values
          get-hash-code
          eval-boolean?
          eval
          get-referenced-rows
          equals?
          get-referenced-row
          depends-on?
          referenced-table)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Data.SqlExpressions.ColumnReference a ...)))))
  (define (is? a) (clr-is Mono.Data.SqlExpressions.ColumnReference a))
  (define (column-reference? a)
    (clr-is Mono.Data.SqlExpressions.ColumnReference a))
  (define-method-port
    get-values
    Mono.Data.SqlExpressions.ColumnReference
    GetValues
    (System.Object[] System.Data.DataRow[]))
  (define-method-port
    get-hash-code
    Mono.Data.SqlExpressions.ColumnReference
    GetHashCode
    (System.Int32))
  (define-method-port
    eval-boolean?
    Mono.Data.SqlExpressions.ColumnReference
    EvalBoolean
    (System.Boolean System.Data.DataRow))
  (define-method-port
    eval
    Mono.Data.SqlExpressions.ColumnReference
    Eval
    (System.Object System.Data.DataRow))
  (define-method-port
    get-referenced-rows
    Mono.Data.SqlExpressions.ColumnReference
    GetReferencedRows
    (System.Data.DataRow[] System.Data.DataRow))
  (define-method-port
    equals?
    Mono.Data.SqlExpressions.ColumnReference
    Equals
    (System.Boolean System.Object))
  (define-method-port
    get-referenced-row
    Mono.Data.SqlExpressions.ColumnReference
    GetReferencedRow
    (System.Data.DataRow System.Data.DataRow))
  (define-method-port
    depends-on?
    Mono.Data.SqlExpressions.ColumnReference
    DependsOn
    (System.Boolean System.Data.DataColumn))
  (define-field-port
    referenced-table
    #f
    #f
    (property:)
    Mono.Data.SqlExpressions.ColumnReference
    ReferencedTable
    Mono.Data.SqlExpressions.ReferencedTable))
