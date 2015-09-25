(library (system component-model list-sort-description-collection)
  (export new
          is?
          list-sort-description-collection?
          index-of
          contains?
          copy-to
          count
          item-get
          item-set!
          item-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.ListSortDescriptionCollection
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.ListSortDescriptionCollection a))
  (define (list-sort-description-collection? a)
    (clr-is System.ComponentModel.ListSortDescriptionCollection a))
  (define-method-port
    index-of
    System.ComponentModel.ListSortDescriptionCollection
    IndexOf
    (System.Int32 System.Object))
  (define-method-port
    contains?
    System.ComponentModel.ListSortDescriptionCollection
    Contains
    (System.Boolean System.Object))
  (define-method-port
    copy-to
    System.ComponentModel.ListSortDescriptionCollection
    CopyTo
    (System.Void System.Array System.Int32))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.ComponentModel.ListSortDescriptionCollection
    Count
    System.Int32)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.ComponentModel.ListSortDescriptionCollection
    Item
    System.ComponentModel.ListSortDescription))
