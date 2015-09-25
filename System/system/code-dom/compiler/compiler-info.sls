(library (system code-dom compiler compiler-info)
  (export is?
          compiler-info?
          create-default-compiler-parameters
          get-hash-code
          get-extensions
          create-provider
          get-languages
          equals?
          code-dom-provider-type
          is-code-dom-provider-type-valid?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.CodeDom.Compiler.CompilerInfo a))
  (define (compiler-info? a)
    (clr-is System.CodeDom.Compiler.CompilerInfo a))
  (define-method-port
    create-default-compiler-parameters
    System.CodeDom.Compiler.CompilerInfo
    CreateDefaultCompilerParameters
    (System.CodeDom.Compiler.CompilerParameters))
  (define-method-port
    get-hash-code
    System.CodeDom.Compiler.CompilerInfo
    GetHashCode
    (System.Int32))
  (define-method-port
    get-extensions
    System.CodeDom.Compiler.CompilerInfo
    GetExtensions
    (System.String[]))
  (define-method-port
    create-provider
    System.CodeDom.Compiler.CompilerInfo
    CreateProvider
    (System.CodeDom.Compiler.CodeDomProvider))
  (define-method-port
    get-languages
    System.CodeDom.Compiler.CompilerInfo
    GetLanguages
    (System.String[]))
  (define-method-port
    equals?
    System.CodeDom.Compiler.CompilerInfo
    Equals
    (System.Boolean System.Object))
  (define-field-port
    code-dom-provider-type
    #f
    #f
    (property:)
    System.CodeDom.Compiler.CompilerInfo
    CodeDomProviderType
    System.Type)
  (define-field-port
    is-code-dom-provider-type-valid?
    #f
    #f
    (property:)
    System.CodeDom.Compiler.CompilerInfo
    IsCodeDomProviderTypeValid
    System.Boolean))
