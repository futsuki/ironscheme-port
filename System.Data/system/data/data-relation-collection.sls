(library (system data data-relation-collection)
  (export is?
          data-relation-collection?
          remove-at
          can-remove?
          copy-to
          add-range
          index-of
          add
          contains?
          remove
          clear
          item
          item)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.DataRelationCollection a))
  (define (data-relation-collection? a)
    (clr-is System.Data.DataRelationCollection a))
  (define-method-port
    remove-at
    System.Data.DataRelationCollection
    RemoveAt
    (System.Void System.Int32))
  (define-method-port
    can-remove?
    System.Data.DataRelationCollection
    CanRemove
    (System.Boolean System.Data.DataRelation))
  (define-method-port
    copy-to
    System.Data.DataRelationCollection
    CopyTo
    (System.Void System.Data.DataRelation[] System.Int32))
  (define-method-port
    add-range
    System.Data.DataRelationCollection
    AddRange
    (System.Void System.Data.DataRelation[]))
  (define-method-port
    index-of
    System.Data.DataRelationCollection
    IndexOf
    (System.Int32 System.String)
    (System.Int32 System.Data.DataRelation))
  (define-method-port
    add
    System.Data.DataRelationCollection
    Add
    (System.Data.DataRelation
      System.String
      System.Data.DataColumn[]
      System.Data.DataColumn[]
      System.Boolean)
    (System.Data.DataRelation
      System.String
      System.Data.DataColumn
      System.Data.DataColumn
      System.Boolean)
    (System.Data.DataRelation
      System.String
      System.Data.DataColumn[]
      System.Data.DataColumn[])
    (System.Data.DataRelation
      System.String
      System.Data.DataColumn
      System.Data.DataColumn)
    (System.Data.DataRelation
      System.Data.DataColumn[]
      System.Data.DataColumn[])
    (System.Data.DataRelation
      System.Data.DataColumn
      System.Data.DataColumn)
    (System.Void System.Data.DataRelation))
  (define-method-port
    contains?
    System.Data.DataRelationCollection
    Contains
    (System.Boolean System.String))
  (define-method-port
    remove
    System.Data.DataRelationCollection
    Remove
    (System.Void System.String)
    (System.Void System.Data.DataRelation))
  (define-method-port
    clear
    System.Data.DataRelationCollection
    Clear
    (System.Void))
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Data.DataRelationCollection
    Item
    System.Data.DataRelation)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Data.DataRelationCollection
    Item
    System.Data.DataRelation))
