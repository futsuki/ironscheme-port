(library (system code-dom code-namespace-collection)
  (export new
          is?
          code-namespace-collection?
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
         #'(clr-new System.CodeDom.CodeNamespaceCollection a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeNamespaceCollection a))
  (define (code-namespace-collection? a)
    (clr-is System.CodeDom.CodeNamespaceCollection a))
  (define-method-port
    insert
    System.CodeDom.CodeNamespaceCollection
    Insert
    (System.Void System.Int32 System.CodeDom.CodeNamespace))
  (define-method-port
    add-range
    System.CodeDom.CodeNamespaceCollection
    AddRange
    (System.Void System.CodeDom.CodeNamespaceCollection)
    (System.Void System.CodeDom.CodeNamespace[]))
  (define-method-port
    index-of
    System.CodeDom.CodeNamespaceCollection
    IndexOf
    (System.Int32 System.CodeDom.CodeNamespace))
  (define-method-port
    add
    System.CodeDom.CodeNamespaceCollection
    Add
    (System.Int32 System.CodeDom.CodeNamespace))
  (define-method-port
    contains?
    System.CodeDom.CodeNamespaceCollection
    Contains
    (System.Boolean System.CodeDom.CodeNamespace))
  (define-method-port
    remove
    System.CodeDom.CodeNamespaceCollection
    Remove
    (System.Void System.CodeDom.CodeNamespace))
  (define-method-port
    copy-to
    System.CodeDom.CodeNamespaceCollection
    CopyTo
    (System.Void System.CodeDom.CodeNamespace[] System.Int32))
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.CodeDom.CodeNamespaceCollection
    Item
    System.CodeDom.CodeNamespace))
