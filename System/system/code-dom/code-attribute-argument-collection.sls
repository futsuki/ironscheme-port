(library (system code-dom code-attribute-argument-collection)
  (export new
          is?
          code-attribute-argument-collection?
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
             System.CodeDom.CodeAttributeArgumentCollection
             a
             ...)))))
  (define (is? a)
    (clr-is System.CodeDom.CodeAttributeArgumentCollection a))
  (define (code-attribute-argument-collection? a)
    (clr-is System.CodeDom.CodeAttributeArgumentCollection a))
  (define-method-port
    insert
    System.CodeDom.CodeAttributeArgumentCollection
    Insert
    (System.Void System.Int32 System.CodeDom.CodeAttributeArgument))
  (define-method-port
    add-range
    System.CodeDom.CodeAttributeArgumentCollection
    AddRange
    (System.Void System.CodeDom.CodeAttributeArgumentCollection)
    (System.Void System.CodeDom.CodeAttributeArgument[]))
  (define-method-port
    index-of
    System.CodeDom.CodeAttributeArgumentCollection
    IndexOf
    (System.Int32 System.CodeDom.CodeAttributeArgument))
  (define-method-port
    add
    System.CodeDom.CodeAttributeArgumentCollection
    Add
    (System.Int32 System.CodeDom.CodeAttributeArgument))
  (define-method-port
    contains?
    System.CodeDom.CodeAttributeArgumentCollection
    Contains
    (System.Boolean System.CodeDom.CodeAttributeArgument))
  (define-method-port
    remove
    System.CodeDom.CodeAttributeArgumentCollection
    Remove
    (System.Void System.CodeDom.CodeAttributeArgument))
  (define-method-port
    copy-to
    System.CodeDom.CodeAttributeArgumentCollection
    CopyTo
    (System.Void System.CodeDom.CodeAttributeArgument[] System.Int32))
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.CodeDom.CodeAttributeArgumentCollection
    Item
    System.CodeDom.CodeAttributeArgument))
