(library (system code-dom code-catch-clause-collection)
  (export new
          is?
          code-catch-clause-collection?
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
         #'(clr-new System.CodeDom.CodeCatchClauseCollection a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeCatchClauseCollection a))
  (define (code-catch-clause-collection? a)
    (clr-is System.CodeDom.CodeCatchClauseCollection a))
  (define-method-port
    insert
    System.CodeDom.CodeCatchClauseCollection
    Insert
    (System.Void System.Int32 System.CodeDom.CodeCatchClause))
  (define-method-port
    add-range
    System.CodeDom.CodeCatchClauseCollection
    AddRange
    (System.Void System.CodeDom.CodeCatchClauseCollection)
    (System.Void System.CodeDom.CodeCatchClause[]))
  (define-method-port
    index-of
    System.CodeDom.CodeCatchClauseCollection
    IndexOf
    (System.Int32 System.CodeDom.CodeCatchClause))
  (define-method-port
    add
    System.CodeDom.CodeCatchClauseCollection
    Add
    (System.Int32 System.CodeDom.CodeCatchClause))
  (define-method-port
    contains?
    System.CodeDom.CodeCatchClauseCollection
    Contains
    (System.Boolean System.CodeDom.CodeCatchClause))
  (define-method-port
    remove
    System.CodeDom.CodeCatchClauseCollection
    Remove
    (System.Void System.CodeDom.CodeCatchClause))
  (define-method-port
    copy-to
    System.CodeDom.CodeCatchClauseCollection
    CopyTo
    (System.Void System.CodeDom.CodeCatchClause[] System.Int32))
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.CodeDom.CodeCatchClauseCollection
    Item
    System.CodeDom.CodeCatchClause))
