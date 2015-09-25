(library (system code-dom compiler compiler-error-collection)
  (export new
          is?
          compiler-error-collection?
          insert
          add-range
          index-of
          add
          contains?
          remove
          copy-to
          item-get
          item-set!
          item-update!
          has-errors?
          has-warnings?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.CodeDom.Compiler.CompilerErrorCollection
             a
             ...)))))
  (define (is? a)
    (clr-is System.CodeDom.Compiler.CompilerErrorCollection a))
  (define (compiler-error-collection? a)
    (clr-is System.CodeDom.Compiler.CompilerErrorCollection a))
  (define-method-port
    insert
    System.CodeDom.Compiler.CompilerErrorCollection
    Insert
    (System.Void System.Int32 System.CodeDom.Compiler.CompilerError))
  (define-method-port
    add-range
    System.CodeDom.Compiler.CompilerErrorCollection
    AddRange
    (System.Void System.CodeDom.Compiler.CompilerErrorCollection)
    (System.Void System.CodeDom.Compiler.CompilerError[]))
  (define-method-port
    index-of
    System.CodeDom.Compiler.CompilerErrorCollection
    IndexOf
    (System.Int32 System.CodeDom.Compiler.CompilerError))
  (define-method-port
    add
    System.CodeDom.Compiler.CompilerErrorCollection
    Add
    (System.Int32 System.CodeDom.Compiler.CompilerError))
  (define-method-port
    contains?
    System.CodeDom.Compiler.CompilerErrorCollection
    Contains
    (System.Boolean System.CodeDom.Compiler.CompilerError))
  (define-method-port
    remove
    System.CodeDom.Compiler.CompilerErrorCollection
    Remove
    (System.Void System.CodeDom.Compiler.CompilerError))
  (define-method-port
    copy-to
    System.CodeDom.Compiler.CompilerErrorCollection
    CopyTo
    (System.Void System.CodeDom.Compiler.CompilerError[] System.Int32))
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.CodeDom.Compiler.CompilerErrorCollection
    Item
    System.CodeDom.Compiler.CompilerError)
  (define-field-port
    has-errors?
    #f
    #f
    (property:)
    System.CodeDom.Compiler.CompilerErrorCollection
    HasErrors
    System.Boolean)
  (define-field-port
    has-warnings?
    #f
    #f
    (property:)
    System.CodeDom.Compiler.CompilerErrorCollection
    HasWarnings
    System.Boolean))
