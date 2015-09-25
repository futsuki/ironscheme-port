(library (system code-dom code-type-declaration-collection)
  (export new
          is?
          code-type-declaration-collection?
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
             System.CodeDom.CodeTypeDeclarationCollection
             a
             ...)))))
  (define (is? a)
    (clr-is System.CodeDom.CodeTypeDeclarationCollection a))
  (define (code-type-declaration-collection? a)
    (clr-is System.CodeDom.CodeTypeDeclarationCollection a))
  (define-method-port
    insert
    System.CodeDom.CodeTypeDeclarationCollection
    Insert
    (System.Void System.Int32 System.CodeDom.CodeTypeDeclaration))
  (define-method-port
    add-range
    System.CodeDom.CodeTypeDeclarationCollection
    AddRange
    (System.Void System.CodeDom.CodeTypeDeclarationCollection)
    (System.Void System.CodeDom.CodeTypeDeclaration[]))
  (define-method-port
    index-of
    System.CodeDom.CodeTypeDeclarationCollection
    IndexOf
    (System.Int32 System.CodeDom.CodeTypeDeclaration))
  (define-method-port
    add
    System.CodeDom.CodeTypeDeclarationCollection
    Add
    (System.Int32 System.CodeDom.CodeTypeDeclaration))
  (define-method-port
    contains?
    System.CodeDom.CodeTypeDeclarationCollection
    Contains
    (System.Boolean System.CodeDom.CodeTypeDeclaration))
  (define-method-port
    remove
    System.CodeDom.CodeTypeDeclarationCollection
    Remove
    (System.Void System.CodeDom.CodeTypeDeclaration))
  (define-method-port
    copy-to
    System.CodeDom.CodeTypeDeclarationCollection
    CopyTo
    (System.Void System.CodeDom.CodeTypeDeclaration[] System.Int32))
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.CodeDom.CodeTypeDeclarationCollection
    Item
    System.CodeDom.CodeTypeDeclaration))
