(library (system code-dom code-expression-collection)
  (export new
          is?
          code-expression-collection?
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
         #'(clr-new System.CodeDom.CodeExpressionCollection a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeExpressionCollection a))
  (define (code-expression-collection? a)
    (clr-is System.CodeDom.CodeExpressionCollection a))
  (define-method-port
    insert
    System.CodeDom.CodeExpressionCollection
    Insert
    (System.Void System.Int32 System.CodeDom.CodeExpression))
  (define-method-port
    add-range
    System.CodeDom.CodeExpressionCollection
    AddRange
    (System.Void System.CodeDom.CodeExpressionCollection)
    (System.Void System.CodeDom.CodeExpression[]))
  (define-method-port
    index-of
    System.CodeDom.CodeExpressionCollection
    IndexOf
    (System.Int32 System.CodeDom.CodeExpression))
  (define-method-port
    add
    System.CodeDom.CodeExpressionCollection
    Add
    (System.Int32 System.CodeDom.CodeExpression))
  (define-method-port
    contains?
    System.CodeDom.CodeExpressionCollection
    Contains
    (System.Boolean System.CodeDom.CodeExpression))
  (define-method-port
    remove
    System.CodeDom.CodeExpressionCollection
    Remove
    (System.Void System.CodeDom.CodeExpression))
  (define-method-port
    copy-to
    System.CodeDom.CodeExpressionCollection
    CopyTo
    (System.Void System.CodeDom.CodeExpression[] System.Int32))
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.CodeDom.CodeExpressionCollection
    Item
    System.CodeDom.CodeExpression))
