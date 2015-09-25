(library (system code-dom code-directive-collection)
  (export new
          is?
          code-directive-collection?
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
         #'(clr-new System.CodeDom.CodeDirectiveCollection a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeDirectiveCollection a))
  (define (code-directive-collection? a)
    (clr-is System.CodeDom.CodeDirectiveCollection a))
  (define-method-port
    insert
    System.CodeDom.CodeDirectiveCollection
    Insert
    (System.Void System.Int32 System.CodeDom.CodeDirective))
  (define-method-port
    add-range
    System.CodeDom.CodeDirectiveCollection
    AddRange
    (System.Void System.CodeDom.CodeDirectiveCollection)
    (System.Void System.CodeDom.CodeDirective[]))
  (define-method-port
    index-of
    System.CodeDom.CodeDirectiveCollection
    IndexOf
    (System.Int32 System.CodeDom.CodeDirective))
  (define-method-port
    add
    System.CodeDom.CodeDirectiveCollection
    Add
    (System.Int32 System.CodeDom.CodeDirective))
  (define-method-port
    contains?
    System.CodeDom.CodeDirectiveCollection
    Contains
    (System.Boolean System.CodeDom.CodeDirective))
  (define-method-port
    remove
    System.CodeDom.CodeDirectiveCollection
    Remove
    (System.Void System.CodeDom.CodeDirective))
  (define-method-port
    copy-to
    System.CodeDom.CodeDirectiveCollection
    CopyTo
    (System.Void System.CodeDom.CodeDirective[] System.Int32))
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.CodeDom.CodeDirectiveCollection
    Item
    System.CodeDom.CodeDirective))
