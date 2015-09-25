(library (system code-dom compiler code-generator)
  (export is?
          code-generator?
          validate-identifiers
          generate-code-from-member
          is-valid-language-independent-identifier?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.CodeDom.Compiler.CodeGenerator a))
  (define (code-generator? a)
    (clr-is System.CodeDom.Compiler.CodeGenerator a))
  (define-method-port
    validate-identifiers
    System.CodeDom.Compiler.CodeGenerator
    ValidateIdentifiers
    (static: System.Void System.CodeDom.CodeObject))
  (define-method-port
    generate-code-from-member
    System.CodeDom.Compiler.CodeGenerator
    GenerateCodeFromMember
    (System.Void
      System.CodeDom.CodeTypeMember
      System.IO.TextWriter
      System.CodeDom.Compiler.CodeGeneratorOptions))
  (define-method-port
    is-valid-language-independent-identifier?
    System.CodeDom.Compiler.CodeGenerator
    IsValidLanguageIndependentIdentifier
    (static: System.Boolean System.String)))
