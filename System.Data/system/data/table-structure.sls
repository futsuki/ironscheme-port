(library (system data table-structure)
  (export new
          is?
          table-structure?
          contains-column?
          table-get
          table-set!
          table-update!
          ordinal-columns-get
          ordinal-columns-set!
          ordinal-columns-update!
          non-ordinal-columns-get
          non-ordinal-columns-set!
          non-ordinal-columns-update!
          primary-key-get
          primary-key-set!
          primary-key-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Data.TableStructure a ...)))))
  (define (is? a) (clr-is System.Data.TableStructure a))
  (define (table-structure? a) (clr-is System.Data.TableStructure a))
  (define-method-port
    contains-column?
    System.Data.TableStructure
    ContainsColumn
    (System.Boolean System.String))
  (define-field-port
    table-get
    table-set!
    table-update!
    ()
    System.Data.TableStructure
    Table
    System.Data.DataTable)
  (define-field-port
    ordinal-columns-get
    ordinal-columns-set!
    ordinal-columns-update!
    ()
    System.Data.TableStructure
    OrdinalColumns
    System.Collections.Hashtable)
  (define-field-port
    non-ordinal-columns-get
    non-ordinal-columns-set!
    non-ordinal-columns-update!
    ()
    System.Data.TableStructure
    NonOrdinalColumns
    System.Collections.ArrayList)
  (define-field-port
    primary-key-get
    primary-key-set!
    primary-key-update!
    ()
    System.Data.TableStructure
    PrimaryKey
    System.Data.DataColumn))
