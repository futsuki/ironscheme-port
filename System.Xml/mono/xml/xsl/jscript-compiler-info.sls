(library (mono xml xsl jscript-compiler-info)
  (export new
          is?
          jscript-compiler-info?
          format-source
          code-dom-provider
          extension
          source-template)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Xsl.JScriptCompilerInfo a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.JScriptCompilerInfo a))
  (define (jscript-compiler-info? a)
    (clr-is Mono.Xml.Xsl.JScriptCompilerInfo a))
  (define-method-port
    format-source
    Mono.Xml.Xsl.JScriptCompilerInfo
    FormatSource
    (System.String System.Xml.IXmlLineInfo System.String System.String))
  (define-field-port
    code-dom-provider
    #f
    #f
    (property:)
    Mono.Xml.Xsl.JScriptCompilerInfo
    CodeDomProvider
    System.CodeDom.Compiler.CodeDomProvider)
  (define-field-port
    extension
    #f
    #f
    (property:)
    Mono.Xml.Xsl.JScriptCompilerInfo
    Extension
    System.String)
  (define-field-port
    source-template
    #f
    #f
    (property:)
    Mono.Xml.Xsl.JScriptCompilerInfo
    SourceTemplate
    System.String))
