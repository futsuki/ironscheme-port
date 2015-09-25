(library (system code-dom compiler compiler-collection)
  (export new
          is?
          compiler-collection?
          get-compiler-info-for-extension
          get
          get-language-from-extension
          get-compiler-info-for-language
          get-key
          all-keys
          collection-type
          item
          item
          compiler-infos)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.CodeDom.Compiler.CompilerCollection
             a
             ...)))))
  (define (is? a) (clr-is System.CodeDom.Compiler.CompilerCollection a))
  (define (compiler-collection? a)
    (clr-is System.CodeDom.Compiler.CompilerCollection a))
  (define-method-port
    get-compiler-info-for-extension
    System.CodeDom.Compiler.CompilerCollection
    GetCompilerInfoForExtension
    (System.CodeDom.Compiler.CompilerInfo System.String))
  (define-method-port
    get
    System.CodeDom.Compiler.CompilerCollection
    Get
    (System.CodeDom.Compiler.Compiler System.String)
    (System.CodeDom.Compiler.Compiler System.Int32))
  (define-method-port
    get-language-from-extension
    System.CodeDom.Compiler.CompilerCollection
    GetLanguageFromExtension
    (System.String System.String))
  (define-method-port
    get-compiler-info-for-language
    System.CodeDom.Compiler.CompilerCollection
    GetCompilerInfoForLanguage
    (System.CodeDom.Compiler.CompilerInfo System.String))
  (define-method-port
    get-key
    System.CodeDom.Compiler.CompilerCollection
    GetKey
    (System.String System.Int32))
  (define-field-port
    all-keys
    #f
    #f
    (property:)
    System.CodeDom.Compiler.CompilerCollection
    AllKeys
    System.String[])
  (define-field-port
    collection-type
    #f
    #f
    (property:)
    System.CodeDom.Compiler.CompilerCollection
    CollectionType
    System.Configuration.ConfigurationElementCollectionType)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.CodeDom.Compiler.CompilerCollection
    Item
    System.CodeDom.Compiler.Compiler)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.CodeDom.Compiler.CompilerCollection
    Item
    System.CodeDom.Compiler.CompilerInfo)
  (define-field-port
    compiler-infos
    #f
    #f
    (property:)
    System.CodeDom.Compiler.CompilerCollection
    CompilerInfos
    System.CodeDom.Compiler.CompilerInfo[]))
