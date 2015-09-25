(library (system code-dom code-type-parameter-collection)
  (export new
          is?
          code-type-parameter-collection?
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
             System.CodeDom.CodeTypeParameterCollection
             a
             ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeTypeParameterCollection a))
  (define (code-type-parameter-collection? a)
    (clr-is System.CodeDom.CodeTypeParameterCollection a))
  (define-method-port
    insert
    System.CodeDom.CodeTypeParameterCollection
    Insert
    (System.Void System.Int32 System.CodeDom.CodeTypeParameter))
  (define-method-port
    add-range
    System.CodeDom.CodeTypeParameterCollection
    AddRange
    (System.Void System.CodeDom.CodeTypeParameterCollection)
    (System.Void System.CodeDom.CodeTypeParameter[]))
  (define-method-port
    index-of
    System.CodeDom.CodeTypeParameterCollection
    IndexOf
    (System.Int32 System.CodeDom.CodeTypeParameter))
  (define-method-port
    add
    System.CodeDom.CodeTypeParameterCollection
    Add
    (System.Void System.String)
    (System.Int32 System.CodeDom.CodeTypeParameter))
  (define-method-port
    contains?
    System.CodeDom.CodeTypeParameterCollection
    Contains
    (System.Boolean System.CodeDom.CodeTypeParameter))
  (define-method-port
    remove
    System.CodeDom.CodeTypeParameterCollection
    Remove
    (System.Void System.CodeDom.CodeTypeParameter))
  (define-method-port
    copy-to
    System.CodeDom.CodeTypeParameterCollection
    CopyTo
    (System.Void System.CodeDom.CodeTypeParameter[] System.Int32))
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.CodeDom.CodeTypeParameterCollection
    Item
    System.CodeDom.CodeTypeParameter))
