(library (system code-dom compiler compiler)
  (export new
          is?
          compiler?
          compiler-options
          extension
          language
          type
          warning-level
          provider-options
          provider-options-dictionary)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.CodeDom.Compiler.Compiler a ...)))))
  (define (is? a) (clr-is System.CodeDom.Compiler.Compiler a))
  (define (compiler? a) (clr-is System.CodeDom.Compiler.Compiler a))
  (define-field-port
    compiler-options
    #f
    #f
    (property:)
    System.CodeDom.Compiler.Compiler
    CompilerOptions
    System.String)
  (define-field-port
    extension
    #f
    #f
    (property:)
    System.CodeDom.Compiler.Compiler
    Extension
    System.String)
  (define-field-port
    language
    #f
    #f
    (property:)
    System.CodeDom.Compiler.Compiler
    Language
    System.String)
  (define-field-port
    type
    #f
    #f
    (property:)
    System.CodeDom.Compiler.Compiler
    Type
    System.String)
  (define-field-port
    warning-level
    #f
    #f
    (property:)
    System.CodeDom.Compiler.Compiler
    WarningLevel
    System.Int32)
  (define-field-port
    provider-options
    #f
    #f
    (property:)
    System.CodeDom.Compiler.Compiler
    ProviderOptions
    System.CodeDom.Compiler.CompilerProviderOptionsCollection)
  (define-field-port
    provider-options-dictionary
    #f
    #f
    (property:)
    System.CodeDom.Compiler.Compiler
    ProviderOptionsDictionary
    "System.Collections.Generic.Dictionary`2[[System.String, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089],[System.String, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"))
