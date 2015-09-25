(library (system code-dom code-comment-statement-collection)
  (export new
          is?
          code-comment-statement-collection?
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
             System.CodeDom.CodeCommentStatementCollection
             a
             ...)))))
  (define (is? a)
    (clr-is System.CodeDom.CodeCommentStatementCollection a))
  (define (code-comment-statement-collection? a)
    (clr-is System.CodeDom.CodeCommentStatementCollection a))
  (define-method-port
    insert
    System.CodeDom.CodeCommentStatementCollection
    Insert
    (System.Void System.Int32 System.CodeDom.CodeCommentStatement))
  (define-method-port
    add-range
    System.CodeDom.CodeCommentStatementCollection
    AddRange
    (System.Void System.CodeDom.CodeCommentStatementCollection)
    (System.Void System.CodeDom.CodeCommentStatement[]))
  (define-method-port
    index-of
    System.CodeDom.CodeCommentStatementCollection
    IndexOf
    (System.Int32 System.CodeDom.CodeCommentStatement))
  (define-method-port
    add
    System.CodeDom.CodeCommentStatementCollection
    Add
    (System.Int32 System.CodeDom.CodeCommentStatement))
  (define-method-port
    contains?
    System.CodeDom.CodeCommentStatementCollection
    Contains
    (System.Boolean System.CodeDom.CodeCommentStatement))
  (define-method-port
    remove
    System.CodeDom.CodeCommentStatementCollection
    Remove
    (System.Void System.CodeDom.CodeCommentStatement))
  (define-method-port
    copy-to
    System.CodeDom.CodeCommentStatementCollection
    CopyTo
    (System.Void System.CodeDom.CodeCommentStatement[] System.Int32))
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.CodeDom.CodeCommentStatementCollection
    Item
    System.CodeDom.CodeCommentStatement))
