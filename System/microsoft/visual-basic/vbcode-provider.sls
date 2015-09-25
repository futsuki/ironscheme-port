(library (microsoft visual-basic vbcode-provider)
  (export new
          is?
          vbcode-provider?
          get-converter
          create-compiler
          create-generator
          generate-code-from-member
          file-extension
          language-options)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Microsoft.VisualBasic.VBCodeProvider a ...)))))
  (define (is? a) (clr-is Microsoft.VisualBasic.VBCodeProvider a))
  (define (vbcode-provider? a)
    (clr-is Microsoft.VisualBasic.VBCodeProvider a))
  (define-method-port
    get-converter
    Microsoft.VisualBasic.VBCodeProvider
    GetConverter
    (System.ComponentModel.TypeConverter System.Type))
  (define-method-port
    create-compiler
    Microsoft.VisualBasic.VBCodeProvider
    CreateCompiler
    (System.CodeDom.Compiler.ICodeCompiler))
  (define-method-port
    create-generator
    Microsoft.VisualBasic.VBCodeProvider
    CreateGenerator
    (System.CodeDom.Compiler.ICodeGenerator))
  (define-method-port
    generate-code-from-member
    Microsoft.VisualBasic.VBCodeProvider
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
    Microsoft.VisualBasic.VBCodeProvider
    FileExtension
    System.String)
  (define-field-port
    language-options
    #f
    #f
    (property:)
    Microsoft.VisualBasic.VBCodeProvider
    LanguageOptions
    System.CodeDom.Compiler.LanguageOptions))
