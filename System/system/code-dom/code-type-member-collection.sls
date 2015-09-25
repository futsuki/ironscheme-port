(library (system code-dom code-type-member-collection)
  (export new
          is?
          code-type-member-collection?
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
         #'(clr-new System.CodeDom.CodeTypeMemberCollection a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeTypeMemberCollection a))
  (define (code-type-member-collection? a)
    (clr-is System.CodeDom.CodeTypeMemberCollection a))
  (define-method-port
    insert
    System.CodeDom.CodeTypeMemberCollection
    Insert
    (System.Void System.Int32 System.CodeDom.CodeTypeMember))
  (define-method-port
    add-range
    System.CodeDom.CodeTypeMemberCollection
    AddRange
    (System.Void System.CodeDom.CodeTypeMemberCollection)
    (System.Void System.CodeDom.CodeTypeMember[]))
  (define-method-port
    index-of
    System.CodeDom.CodeTypeMemberCollection
    IndexOf
    (System.Int32 System.CodeDom.CodeTypeMember))
  (define-method-port
    add
    System.CodeDom.CodeTypeMemberCollection
    Add
    (System.Int32 System.CodeDom.CodeTypeMember))
  (define-method-port
    contains?
    System.CodeDom.CodeTypeMemberCollection
    Contains
    (System.Boolean System.CodeDom.CodeTypeMember))
  (define-method-port
    remove
    System.CodeDom.CodeTypeMemberCollection
    Remove
    (System.Void System.CodeDom.CodeTypeMember))
  (define-method-port
    copy-to
    System.CodeDom.CodeTypeMemberCollection
    CopyTo
    (System.Void System.CodeDom.CodeTypeMember[] System.Int32))
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.CodeDom.CodeTypeMemberCollection
    Item
    System.CodeDom.CodeTypeMember))
