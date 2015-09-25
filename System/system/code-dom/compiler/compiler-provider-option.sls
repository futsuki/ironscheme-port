(library (system code-dom compiler compiler-provider-option)
  (export new
          is?
          compiler-provider-option?
          name-get
          name-set!
          name-update!
          value-get
          value-set!
          value-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.CodeDom.Compiler.CompilerProviderOption
             a
             ...)))))
  (define (is? a)
    (clr-is System.CodeDom.Compiler.CompilerProviderOption a))
  (define (compiler-provider-option? a)
    (clr-is System.CodeDom.Compiler.CompilerProviderOption a))
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    System.CodeDom.Compiler.CompilerProviderOption
    Name
    System.String)
  (define-field-port
    value-get
    value-set!
    value-update!
    (property:)
    System.CodeDom.Compiler.CompilerProviderOption
    Value
    System.String))
