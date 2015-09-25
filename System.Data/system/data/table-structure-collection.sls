(library (system data table-structure-collection)
  (export new is? table-structure-collection? add item item)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.TableStructureCollection a ...)))))
  (define (is? a) (clr-is System.Data.TableStructureCollection a))
  (define (table-structure-collection? a)
    (clr-is System.Data.TableStructureCollection a))
  (define-method-port
    add
    System.Data.TableStructureCollection
    Add
    (System.Void System.Data.TableStructure))
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Data.TableStructureCollection
    Item
    System.Data.TableStructure)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Data.TableStructureCollection
    Item
    System.Data.TableStructure))
