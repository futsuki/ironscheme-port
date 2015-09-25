(library (microsoft csharp csharp-code-provider)
  (export new
          is?
          csharp-code-provider?
          get-converter
          create-compiler
          create-generator
          generate-code-from-member
          file-extension)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Microsoft.CSharp.CSharpCodeProvider a ...)))))
  (define (is? a) (clr-is Microsoft.CSharp.CSharpCodeProvider a))
  (define (csharp-code-provider? a)
    (clr-is Microsoft.CSharp.CSharpCodeProvider a))
  (define-method-port
    get-converter
    Microsoft.CSharp.CSharpCodeProvider
    GetConverter
    (System.ComponentModel.TypeConverter System.Type))
  (define-method-port
    create-compiler
    Microsoft.CSharp.CSharpCodeProvider
    CreateCompiler
    (System.CodeDom.Compiler.ICodeCompiler))
  (define-method-port
    create-generator
    Microsoft.CSharp.CSharpCodeProvider
    CreateGenerator
    (System.CodeDom.Compiler.ICodeGenerator))
  (define-method-port
    generate-code-from-member
    Microsoft.CSharp.CSharpCodeProvider
    GenerateCodeFromMember
    (System.Void
      System.CodeDom.CodeTypeMember
      System.IO.TextWriter
      System.CodeDom.Compiler.CodeGeneratorOptions))
  (define-field-port
    file-extension
    #f
    #f
    (property:)
    Microsoft.CSharp.CSharpCodeProvider
    FileExtension
    System.String))
