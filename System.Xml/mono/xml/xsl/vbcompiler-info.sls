(library (mono xml xsl vbcompiler-info)
  (export new
          is?
          vbcompiler-info?
          format-source
          code-dom-provider
          extension
          source-template)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Xsl.VBCompilerInfo a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.VBCompilerInfo a))
  (define (vbcompiler-info? a) (clr-is Mono.Xml.Xsl.VBCompilerInfo a))
  (define-method-port
    format-source
    Mono.Xml.Xsl.VBCompilerInfo
    FormatSource
    (System.String System.Xml.IXmlLineInfo System.String System.String))
  (define-field-port
    code-dom-provider
    #f
    #f
    (property:)
    Mono.Xml.Xsl.VBCompilerInfo
    CodeDomProvider
    System.CodeDom.Compiler.CodeDomProvider)
  (define-field-port
    extension
    #f
    #f
    (property:)
    Mono.Xml.Xsl.VBCompilerInfo
    Extension
    System.String)
  (define-field-port
    source-template
    #f
    #f
    (property:)
    Mono.Xml.Xsl.VBCompilerInfo
    SourceTemplate
    System.String))
