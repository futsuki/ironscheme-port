(library (system
          code-dom
          code-parameter-declaration-expression-collection)
  (export new
          is?
          code-parameter-declaration-expression-collection?
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
             System.CodeDom.CodeParameterDeclarationExpressionCollection
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.CodeDom.CodeParameterDeclarationExpressionCollection
      a))
  (define (code-parameter-declaration-expression-collection? a)
    (clr-is
      System.CodeDom.CodeParameterDeclarationExpressionCollection
      a))
  (define-method-port
    insert
    System.CodeDom.CodeParameterDeclarationExpressionCollection
    Insert
    (System.Void
      System.Int32
      System.CodeDom.CodeParameterDeclarationExpression))
  (define-method-port
    add-range
    System.CodeDom.CodeParameterDeclarationExpressionCollection
    AddRange
    (System.Void
      System.CodeDom.CodeParameterDeclarationExpressionCollection)
    (System.Void System.CodeDom.CodeParameterDeclarationExpression[]))
  (define-method-port
    index-of
    System.CodeDom.CodeParameterDeclarationExpressionCollection
    IndexOf
    (System.Int32 System.CodeDom.CodeParameterDeclarationExpression))
  (define-method-port
    add
    System.CodeDom.CodeParameterDeclarationExpressionCollection
    Add
    (System.Int32 System.CodeDom.CodeParameterDeclarationExpression))
  (define-method-port
    contains?
    System.CodeDom.CodeParameterDeclarationExpressionCollection
    Contains
    (System.Boolean System.CodeDom.CodeParameterDeclarationExpression))
  (define-method-port
    remove
    System.CodeDom.CodeParameterDeclarationExpressionCollection
    Remove
    (System.Void System.CodeDom.CodeParameterDeclarationExpression))
  (define-method-port
    copy-to
    System.CodeDom.CodeParameterDeclarationExpressionCollection
    CopyTo
    (System.Void
      System.CodeDom.CodeParameterDeclarationExpression[]
      System.Int32))
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.CodeDom.CodeParameterDeclarationExpressionCollection
    Item
    System.CodeDom.CodeParameterDeclarationExpression))
