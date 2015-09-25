(library (system data table-mapping-collection)
  (export new is? table-mapping-collection? add item)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.TableMappingCollection a ...)))))
  (define (is? a) (clr-is System.Data.TableMappingCollection a))
  (define (table-mapping-collection? a)
    (clr-is System.Data.TableMappingCollection a))
  (define-method-port
    add
    System.Data.TableMappingCollection
    Add
    (System.Void System.Data.TableMapping))
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Data.TableMappingCollection
    Item
    System.Data.TableMapping))
