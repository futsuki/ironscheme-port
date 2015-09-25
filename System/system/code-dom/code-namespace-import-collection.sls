(library (system code-dom code-namespace-import-collection)
  (export new
          is?
          code-namespace-import-collection?
          add-range
          get-enumerator
          add
          clear
          count
          item-get
          item-set!
          item-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.CodeDom.CodeNamespaceImportCollection
             a
             ...)))))
  (define (is? a)
    (clr-is System.CodeDom.CodeNamespaceImportCollection a))
  (define (code-namespace-import-collection? a)
    (clr-is System.CodeDom.CodeNamespaceImportCollection a))
  (define-method-port
    add-range
    System.CodeDom.CodeNamespaceImportCollection
    AddRange
    (System.Void System.CodeDom.CodeNamespaceImport[]))
  (define-method-port
    get-enumerator
    System.CodeDom.CodeNamespaceImportCollection
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    add
    System.CodeDom.CodeNamespaceImportCollection
    Add
    (System.Void System.CodeDom.CodeNamespaceImport))
  (define-method-port
    clear
    System.CodeDom.CodeNamespaceImportCollection
    Clear
    (System.Void))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.CodeDom.CodeNamespaceImportCollection
    Count
    System.Int32)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.CodeDom.CodeNamespaceImportCollection
    Item
    System.CodeDom.CodeNamespaceImport))
