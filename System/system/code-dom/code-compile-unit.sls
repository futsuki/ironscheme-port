(library (system code-dom code-compile-unit)
  (export new
          is?
          code-compile-unit?
          assembly-custom-attributes
          namespaces
          referenced-assemblies
          start-directives
          end-directives)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.CodeDom.CodeCompileUnit a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeCompileUnit a))
  (define (code-compile-unit? a)
    (clr-is System.CodeDom.CodeCompileUnit a))
  (define-field-port
    assembly-custom-attributes
    #f
    #f
    (property:)
    System.CodeDom.CodeCompileUnit
    AssemblyCustomAttributes
    System.CodeDom.CodeAttributeDeclarationCollection)
  (define-field-port
    namespaces
    #f
    #f
    (property:)
    System.CodeDom.CodeCompileUnit
    Namespaces
    System.CodeDom.CodeNamespaceCollection)
  (define-field-port
    referenced-assemblies
    #f
    #f
    (property:)
    System.CodeDom.CodeCompileUnit
    ReferencedAssemblies
    System.Collections.Specialized.StringCollection)
  (define-field-port
    start-directives
    #f
    #f
    (property:)
    System.CodeDom.CodeCompileUnit
    StartDirectives
    System.CodeDom.CodeDirectiveCollection)
  (define-field-port
    end-directives
    #f
    #f
    (property:)
    System.CodeDom.CodeCompileUnit
    EndDirectives
    System.CodeDom.CodeDirectiveCollection))
