(library (system diagnostics counter-creation-data-collection)
  (export new
          is?
          counter-creation-data-collection?
          insert
          add-range
          index-of
          add
          contains?
          remove
          copy-to
          item-get
          item-set!
          item-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Diagnostics.CounterCreationDataCollection
             a
             ...)))))
  (define (is? a)
    (clr-is System.Diagnostics.CounterCreationDataCollection a))
  (define (counter-creation-data-collection? a)
    (clr-is System.Diagnostics.CounterCreationDataCollection a))
  (define-method-port
    insert
    System.Diagnostics.CounterCreationDataCollection
    Insert
    (System.Void System.Int32 System.Diagnostics.CounterCreationData))
  (define-method-port
    add-range
    System.Diagnostics.CounterCreationDataCollection
    AddRange
    (System.Void System.Diagnostics.CounterCreationDataCollection)
    (System.Void System.Diagnostics.CounterCreationData[]))
  (define-method-port
    index-of
    System.Diagnostics.CounterCreationDataCollection
    IndexOf
    (System.Int32 System.Diagnostics.CounterCreationData))
  (define-method-port
    add
    System.Diagnostics.CounterCreationDataCollection
    Add
    (System.Int32 System.Diagnostics.CounterCreationData))
  (define-method-port
    contains?
    System.Diagnostics.CounterCreationDataCollection
    Contains
    (System.Boolean System.Diagnostics.CounterCreationData))
  (define-method-port
    remove
    System.Diagnostics.CounterCreationDataCollection
    Remove
    (System.Void System.Diagnostics.CounterCreationData))
  (define-method-port
    copy-to
    System.Diagnostics.CounterCreationDataCollection
    CopyTo
    (System.Void System.Diagnostics.CounterCreationData[] System.Int32))
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Diagnostics.CounterCreationDataCollection
    Item
    System.Diagnostics.CounterCreationData))
