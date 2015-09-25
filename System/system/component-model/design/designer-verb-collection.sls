(library (system component-model design designer-verb-collection)
  (export new
          is?
          designer-verb-collection?
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
             System.ComponentModel.Design.DesignerVerbCollection
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.Design.DesignerVerbCollection a))
  (define (designer-verb-collection? a)
    (clr-is System.ComponentModel.Design.DesignerVerbCollection a))
  (define-method-port
    insert
    System.ComponentModel.Design.DesignerVerbCollection
    Insert
    (System.Void
      System.Int32
      System.ComponentModel.Design.DesignerVerb))
  (define-method-port
    add-range
    System.ComponentModel.Design.DesignerVerbCollection
    AddRange
    (System.Void System.ComponentModel.Design.DesignerVerbCollection)
    (System.Void System.ComponentModel.Design.DesignerVerb[]))
  (define-method-port
    index-of
    System.ComponentModel.Design.DesignerVerbCollection
    IndexOf
    (System.Int32 System.ComponentModel.Design.DesignerVerb))
  (define-method-port
    add
    System.ComponentModel.Design.DesignerVerbCollection
    Add
    (System.Int32 System.ComponentModel.Design.DesignerVerb))
  (define-method-port
    contains?
    System.ComponentModel.Design.DesignerVerbCollection
    Contains
    (System.Boolean System.ComponentModel.Design.DesignerVerb))
  (define-method-port
    remove
    System.ComponentModel.Design.DesignerVerbCollection
    Remove
    (System.Void System.ComponentModel.Design.DesignerVerb))
  (define-method-port
    copy-to
    System.ComponentModel.Design.DesignerVerbCollection
    CopyTo
    (System.Void
      System.ComponentModel.Design.DesignerVerb[]
      System.Int32))
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.ComponentModel.Design.DesignerVerbCollection
    Item
    System.ComponentModel.Design.DesignerVerb))
