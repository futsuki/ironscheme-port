(library (system code-dom compiler compiler-error)
  (export new
          is?
          compiler-error?
          to-string
          line-get
          line-set!
          line-update!
          column-get
          column-set!
          column-update!
          error-number-get
          error-number-set!
          error-number-update!
          error-text-get
          error-text-set!
          error-text-update!
          is-warning?-get
          is-warning?-set!
          is-warning?-update!
          file-name-get
          file-name-set!
          file-name-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.CodeDom.Compiler.CompilerError a ...)))))
  (define (is? a) (clr-is System.CodeDom.Compiler.CompilerError a))
  (define (compiler-error? a)
    (clr-is System.CodeDom.Compiler.CompilerError a))
  (define-method-port
    to-string
    System.CodeDom.Compiler.CompilerError
    ToString
    (System.String))
  (define-field-port
    line-get
    line-set!
    line-update!
    (property:)
    System.CodeDom.Compiler.CompilerError
    Line
    System.Int32)
  (define-field-port
    column-get
    column-set!
    column-update!
    (property:)
    System.CodeDom.Compiler.CompilerError
    Column
    System.Int32)
  (define-field-port
    error-number-get
    error-number-set!
    error-number-update!
    (property:)
    System.CodeDom.Compiler.CompilerError
    ErrorNumber
    System.String)
  (define-field-port
    error-text-get
    error-text-set!
    error-text-update!
    (property:)
    System.CodeDom.Compiler.CompilerError
    ErrorText
    System.String)
  (define-field-port
    is-warning?-get
    is-warning?-set!
    is-warning?-update!
    (property:)
    System.CodeDom.Compiler.CompilerError
    IsWarning
    System.Boolean)
  (define-field-port
    file-name-get
    file-name-set!
    file-name-update!
    (property:)
    System.CodeDom.Compiler.CompilerError
    FileName
    System.String))
