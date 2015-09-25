(library (system code-dom compiler code-dom-provider)
  (export is?
          code-dom-provider?
          create-escaped-identifier
          parse
          compile-assembly-from-file
          compile-assembly-from-source
          generate-code-from-namespace
          generate-code-from-statement
          get-converter
          create-compiler
          generate-code-from-expression
          create-valid-identifier
          get-language-from-extension
          get-compiler-info
          create-generator
          supports?
          create-parser
          get-type-output
          get-all-compiler-info
          create-provider
          is-defined-language?
          generate-code-from-type
          compile-assembly-from-dom
          generate-code-from-member
          is-defined-extension?
          is-valid-identifier?
          generate-code-from-compile-unit
          file-extension
          language-options)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.CodeDom.Compiler.CodeDomProvider a))
  (define (code-dom-provider? a)
    (clr-is System.CodeDom.Compiler.CodeDomProvider a))
  (define-method-port
    create-escaped-identifier
    System.CodeDom.Compiler.CodeDomProvider
    CreateEscapedIdentifier
    (System.String System.String))
  (define-method-port
    parse
    System.CodeDom.Compiler.CodeDomProvider
    Parse
    (System.CodeDom.CodeCompileUnit System.IO.TextReader))
  (define-method-port
    compile-assembly-from-file
    System.CodeDom.Compiler.CodeDomProvider
    CompileAssemblyFromFile
    (System.CodeDom.Compiler.CompilerResults
      System.CodeDom.Compiler.CompilerParameters
      System.String[]))
  (define-method-port
    compile-assembly-from-source
    System.CodeDom.Compiler.CodeDomProvider
    CompileAssemblyFromSource
    (System.CodeDom.Compiler.CompilerResults
      System.CodeDom.Compiler.CompilerParameters
      System.String[]))
  (define-method-port
    generate-code-from-namespace
    System.CodeDom.Compiler.CodeDomProvider
    GenerateCodeFromNamespace
    (System.Void
      System.CodeDom.CodeNamespace
      System.IO.TextWriter
      System.CodeDom.Compiler.CodeGeneratorOptions))
  (define-method-port
    generate-code-from-statement
    System.CodeDom.Compiler.CodeDomProvider
    GenerateCodeFromStatement
    (System.Void
      System.CodeDom.CodeStatement
      System.IO.TextWriter
      System.CodeDom.Compiler.CodeGeneratorOptions))
  (define-method-port
    get-converter
    System.CodeDom.Compiler.CodeDomProvider
    GetConverter
    (System.ComponentModel.TypeConverter System.Type))
  (define-method-port
    create-compiler
    System.CodeDom.Compiler.CodeDomProvider
    CreateCompiler
    (System.CodeDom.Compiler.ICodeCompiler))
  (define-method-port
    generate-code-from-expression
    System.CodeDom.Compiler.CodeDomProvider
    GenerateCodeFromExpression
    (System.Void
      System.CodeDom.CodeExpression
      System.IO.TextWriter
      System.CodeDom.Compiler.CodeGeneratorOptions))
  (define-method-port
    create-valid-identifier
    System.CodeDom.Compiler.CodeDomProvider
    CreateValidIdentifier
    (System.String System.String))
  (define-method-port
    get-language-from-extension
    System.CodeDom.Compiler.CodeDomProvider
    GetLanguageFromExtension
    (static: System.String System.String))
  (define-method-port
    get-compiler-info
    System.CodeDom.Compiler.CodeDomProvider
    GetCompilerInfo
    (static: System.CodeDom.Compiler.CompilerInfo System.String))
  (define-method-port
    create-generator
    System.CodeDom.Compiler.CodeDomProvider
    CreateGenerator
    (System.CodeDom.Compiler.ICodeGenerator System.IO.TextWriter)
    (System.CodeDom.Compiler.ICodeGenerator System.String)
    (System.CodeDom.Compiler.ICodeGenerator))
  (define-method-port
    supports?
    System.CodeDom.Compiler.CodeDomProvider
    Supports
    (System.Boolean System.CodeDom.Compiler.GeneratorSupport))
  (define-method-port
    create-parser
    System.CodeDom.Compiler.CodeDomProvider
    CreateParser
    (System.CodeDom.Compiler.ICodeParser))
  (define-method-port
    get-type-output
    System.CodeDom.Compiler.CodeDomProvider
    GetTypeOutput
    (System.String System.CodeDom.CodeTypeReference))
  (define-method-port
    get-all-compiler-info
    System.CodeDom.Compiler.CodeDomProvider
    GetAllCompilerInfo
    (static: System.CodeDom.Compiler.CompilerInfo[]))
  (define-method-port
    create-provider
    System.CodeDom.Compiler.CodeDomProvider
    CreateProvider
    (static: System.CodeDom.Compiler.CodeDomProvider System.String))
  (define-method-port
    is-defined-language?
    System.CodeDom.Compiler.CodeDomProvider
    IsDefinedLanguage
    (static: System.Boolean System.String))
  (define-method-port
    generate-code-from-type
    System.CodeDom.Compiler.CodeDomProvider
    GenerateCodeFromType
    (System.Void
      System.CodeDom.CodeTypeDeclaration
      System.IO.TextWriter
      System.CodeDom.Compiler.CodeGeneratorOptions))
  (define-method-port
    compile-assembly-from-dom
    System.CodeDom.Compiler.CodeDomProvider
    CompileAssemblyFromDom
    (System.CodeDom.Compiler.CompilerResults
      System.CodeDom.Compiler.CompilerParameters
      System.CodeDom.CodeCompileUnit[]))
  (define-method-port
    generate-code-from-member
    System.CodeDom.Compiler.CodeDomProvider
    GenerateCodeFromMember
    (System.Void
      System.CodeDom.CodeTypeMember
      System.IO.TextWriter
      System.CodeDom.Compiler.CodeGeneratorOptions))
  (define-method-port
    is-defined-extension?
    System.CodeDom.Compiler.CodeDomProvider
    IsDefinedExtension
    (static: System.Boolean System.String))
  (define-method-port
    is-valid-identifier?
    System.CodeDom.Compiler.CodeDomProvider
    IsValidIdentifier
    (System.Boolean System.String))
  (define-method-port
    generate-code-from-compile-unit
    System.CodeDom.Compiler.CodeDomProvider
    GenerateCodeFromCompileUnit
    (System.Void
      System.CodeDom.CodeCompileUnit
      System.IO.TextWriter
      System.CodeDom.Compiler.CodeGeneratorOptions))
  (define-field-port
    file-extension
    #f
    #f
    (property:)
    System.CodeDom.Compiler.CodeDomProvider
    FileExtension
    System.String)
  (define-field-port
    language-options
    #f
    #f
    (property:)
    System.CodeDom.Compiler.CodeDomProvider
    LanguageOptions
    System.CodeDom.Compiler.LanguageOptions))
