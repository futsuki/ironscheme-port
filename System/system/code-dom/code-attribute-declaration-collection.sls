(library (system code-dom code-attribute-declaration-collection)
  (export new
          is?
          code-attribute-declaration-collection?
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
             System.CodeDom.CodeAttributeDeclarationCollection
             a
             ...)))))
  (define (is? a)
    (clr-is System.CodeDom.CodeAttributeDeclarationCollection a))
  (define (code-attribute-declaration-collection? a)
    (clr-is System.CodeDom.CodeAttributeDeclarationCollection a))
  (define-method-port
    insert
    System.CodeDom.CodeAttributeDeclarationCollection
    Insert
    (System.Void System.Int32 System.CodeDom.CodeAttributeDeclaration))
  (define-method-port
    add-range
    System.CodeDom.CodeAttributeDeclarationCollection
    AddRange
    (System.Void System.CodeDom.CodeAttributeDeclarationCollection)
    (System.Void System.CodeDom.CodeAttributeDeclaration[]))
  (define-method-port
    index-of
    System.CodeDom.CodeAttributeDeclarationCollection
    IndexOf
    (System.Int32 System.CodeDom.CodeAttributeDeclaration))
  (define-method-port
    add
    System.CodeDom.CodeAttributeDeclarationCollection
    Add
    (System.Int32 System.CodeDom.CodeAttributeDeclaration))
  (define-method-port
    contains?
    System.CodeDom.CodeAttributeDeclarationCollection
    Contains
    (System.Boolean System.CodeDom.CodeAttributeDeclaration))
  (define-method-port
    remove
    System.CodeDom.CodeAttributeDeclarationCollection
    Remove
    (System.Void System.CodeDom.CodeAttributeDeclaration))
  (define-method-port
    copy-to
    System.CodeDom.CodeAttributeDeclarationCollection
    CopyTo
    (System.Void
      System.CodeDom.CodeAttributeDeclaration[]
      System.Int32))
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.CodeDom.CodeAttributeDeclarationCollection
    Item
    System.CodeDom.CodeAttributeDeclaration))
