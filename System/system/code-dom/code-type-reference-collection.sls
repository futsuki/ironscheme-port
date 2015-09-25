(library (system code-dom code-type-reference-collection)
  (export new
          is?
          code-type-reference-collection?
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
             System.CodeDom.CodeTypeReferenceCollection
             a
             ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeTypeReferenceCollection a))
  (define (code-type-reference-collection? a)
    (clr-is System.CodeDom.CodeTypeReferenceCollection a))
  (define-method-port
    insert
    System.CodeDom.CodeTypeReferenceCollection
    Insert
    (System.Void System.Int32 System.CodeDom.CodeTypeReference))
  (define-method-port
    add-range
    System.CodeDom.CodeTypeReferenceCollection
    AddRange
    (System.Void System.CodeDom.CodeTypeReferenceCollection)
    (System.Void System.CodeDom.CodeTypeReference[]))
  (define-method-port
    index-of
    System.CodeDom.CodeTypeReferenceCollection
    IndexOf
    (System.Int32 System.CodeDom.CodeTypeReference))
  (define-method-port
    add
    System.CodeDom.CodeTypeReferenceCollection
    Add
    (System.Void System.Type)
    (System.Void System.String)
    (System.Int32 System.CodeDom.CodeTypeReference))
  (define-method-port
    contains?
    System.CodeDom.CodeTypeReferenceCollection
    Contains
    (System.Boolean System.CodeDom.CodeTypeReference))
  (define-method-port
    remove
    System.CodeDom.CodeTypeReferenceCollection
    Remove
    (System.Void System.CodeDom.CodeTypeReference))
  (define-method-port
    copy-to
    System.CodeDom.CodeTypeReferenceCollection
    CopyTo
    (System.Void System.CodeDom.CodeTypeReference[] System.Int32))
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.CodeDom.CodeTypeReferenceCollection
    Item
    System.CodeDom.CodeTypeReference))
