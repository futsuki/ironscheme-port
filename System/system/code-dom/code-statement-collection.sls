(library (system code-dom code-statement-collection)
  (export new
          is?
          code-statement-collection?
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
         #'(clr-new System.CodeDom.CodeStatementCollection a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeStatementCollection a))
  (define (code-statement-collection? a)
    (clr-is System.CodeDom.CodeStatementCollection a))
  (define-method-port
    insert
    System.CodeDom.CodeStatementCollection
    Insert
    (System.Void System.Int32 System.CodeDom.CodeStatement))
  (define-method-port
    add-range
    System.CodeDom.CodeStatementCollection
    AddRange
    (System.Void System.CodeDom.CodeStatementCollection)
    (System.Void System.CodeDom.CodeStatement[]))
  (define-method-port
    index-of
    System.CodeDom.CodeStatementCollection
    IndexOf
    (System.Int32 System.CodeDom.CodeStatement))
  (define-method-port
    add
    System.CodeDom.CodeStatementCollection
    Add
    (System.Int32 System.CodeDom.CodeExpression)
    (System.Int32 System.CodeDom.CodeStatement))
  (define-method-port
    contains?
    System.CodeDom.CodeStatementCollection
    Contains
    (System.Boolean System.CodeDom.CodeStatement))
  (define-method-port
    remove
    System.CodeDom.CodeStatementCollection
    Remove
    (System.Void System.CodeDom.CodeStatement))
  (define-method-port
    copy-to
    System.CodeDom.CodeStatementCollection
    CopyTo
    (System.Void System.CodeDom.CodeStatement[] System.Int32))
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.CodeDom.CodeStatementCollection
    Item
    System.CodeDom.CodeStatement))
