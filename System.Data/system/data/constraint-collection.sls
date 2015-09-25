(library (system data constraint-collection)
  (export is?
          constraint-collection?
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
  (define (is? a) (clr-is System.Data.ConstraintCollection a))
  (define (constraint-collection? a)
    (clr-is System.Data.ConstraintCollection a))
  (define-method-port
    remove-at
    System.Data.ConstraintCollection
    RemoveAt
    (System.Void System.Int32))
  (define-method-port
    can-remove?
    System.Data.ConstraintCollection
    CanRemove
    (System.Boolean System.Data.Constraint))
  (define-method-port
    copy-to
    System.Data.ConstraintCollection
    CopyTo
    (System.Void System.Data.Constraint[] System.Int32))
  (define-method-port
    add-range
    System.Data.ConstraintCollection
    AddRange
    (System.Void System.Data.Constraint[]))
  (define-method-port
    index-of
    System.Data.ConstraintCollection
    IndexOf
    (System.Int32 System.String)
    (System.Int32 System.Data.Constraint))
  (define-method-port
    add
    System.Data.ConstraintCollection
    Add
    (System.Data.Constraint
      System.String
      System.Data.DataColumn[]
      System.Data.DataColumn[])
    (System.Data.Constraint
      System.String
      System.Data.DataColumn[]
      System.Boolean)
    (System.Data.Constraint
      System.String
      System.Data.DataColumn
      System.Data.DataColumn)
    (System.Data.Constraint
      System.String
      System.Data.DataColumn
      System.Boolean)
    (System.Void System.Data.Constraint))
  (define-method-port
    contains?
    System.Data.ConstraintCollection
    Contains
    (System.Boolean System.String))
  (define-method-port
    remove
    System.Data.ConstraintCollection
    Remove
    (System.Void System.String)
    (System.Void System.Data.Constraint))
  (define-method-port
    clear
    System.Data.ConstraintCollection
    Clear
    (System.Void))
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Data.ConstraintCollection
    Item
    System.Data.Constraint)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Data.ConstraintCollection
    Item
    System.Data.Constraint))
