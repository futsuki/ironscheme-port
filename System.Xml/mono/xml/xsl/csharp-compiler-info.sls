(library (mono xml xsl csharp-compiler-info)
  (export new
          is?
          csharp-compiler-info?
          format-source
          code-dom-provider
          extension
          source-template)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Xsl.CSharpCompilerInfo a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.CSharpCompilerInfo a))
  (define (csharp-compiler-info? a)
    (clr-is Mono.Xml.Xsl.CSharpCompilerInfo a))
  (define-method-port
    format-source
    Mono.Xml.Xsl.CSharpCompilerInfo
    FormatSource
    (System.String System.Xml.IXmlLineInfo System.String System.String))
  (define-field-port
    code-dom-provider
    #f
    #f
    (property:)
    Mono.Xml.Xsl.CSharpCompilerInfo
    CodeDomProvider
    System.CodeDom.Compiler.CodeDomProvider)
  (define-field-port
    extension
    #f
    #f
    (property:)
    Mono.Xml.Xsl.CSharpCompilerInfo
    Extension
    System.String)
  (define-field-port
    source-template
    #f
    #f
    (property:)
    Mono.Xml.Xsl.CSharpCompilerInfo
    SourceTemplate
    System.String))
