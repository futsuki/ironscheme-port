(library (system data relation-structure-collection)
  (export new is? relation-structure-collection? add item item)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.RelationStructureCollection a ...)))))
  (define (is? a) (clr-is System.Data.RelationStructureCollection a))
  (define (relation-structure-collection? a)
    (clr-is System.Data.RelationStructureCollection a))
  (define-method-port
    add
    System.Data.RelationStructureCollection
    Add
    (System.Void System.Data.RelationStructure))
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Data.RelationStructureCollection
    Item
    System.Data.RelationStructure)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Data.RelationStructureCollection
    Item
    System.Data.RelationStructure))
