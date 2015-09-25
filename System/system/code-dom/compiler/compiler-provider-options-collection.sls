(library (system code-dom compiler compiler-provider-options-collection)
  (export new
          is?
          compiler-provider-options-collection?
          get
          get-key
          all-keys
          provider-options
          item
          item)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.CodeDom.Compiler.CompilerProviderOptionsCollection
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.CodeDom.Compiler.CompilerProviderOptionsCollection
      a))
  (define (compiler-provider-options-collection? a)
    (clr-is
      System.CodeDom.Compiler.CompilerProviderOptionsCollection
      a))
  (define-method-port
    get
    System.CodeDom.Compiler.CompilerProviderOptionsCollection
    Get
    (System.CodeDom.Compiler.CompilerProviderOption System.String)
    (System.CodeDom.Compiler.CompilerProviderOption System.Int32))
  (define-method-port
    get-key
    System.CodeDom.Compiler.CompilerProviderOptionsCollection
    GetKey
    (System.String System.Int32))
  (define-field-port
    all-keys
    #f
    #f
    (property:)
    System.CodeDom.Compiler.CompilerProviderOptionsCollection
    AllKeys
    System.String[])
  (define-field-port
    provider-options
    #f
    #f
    (property:)
    System.CodeDom.Compiler.CompilerProviderOptionsCollection
    ProviderOptions
    "System.Collections.Generic.Dictionary`2[[System.String, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089],[System.String, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]")
  (define-field-port
    item
    #f
    #f
    (property:)
    System.CodeDom.Compiler.CompilerProviderOptionsCollection
    Item
    System.CodeDom.Compiler.CompilerProviderOption)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.CodeDom.Compiler.CompilerProviderOptionsCollection
    Item
    System.CodeDom.Compiler.CompilerProviderOption))
