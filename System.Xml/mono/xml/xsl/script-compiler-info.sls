(library (mono xml xsl script-compiler-info)
  (export is?
          script-compiler-info?
          format-source
          get-script-class
          get-compiler-arguments
          compiler-command-get
          compiler-command-set!
          compiler-command-update!
          default-compiler-options-get
          default-compiler-options-set!
          default-compiler-options-update!
          code-dom-provider
          extension
          source-template)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Xml.Xsl.ScriptCompilerInfo a))
  (define (script-compiler-info? a)
    (clr-is Mono.Xml.Xsl.ScriptCompilerInfo a))
  (define-method-port
    format-source
    Mono.Xml.Xsl.ScriptCompilerInfo
    FormatSource
    (System.String System.Xml.IXmlLineInfo System.String System.String))
  (define-method-port
    get-script-class
    Mono.Xml.Xsl.ScriptCompilerInfo
    GetScriptClass
    (System.Type
      System.String
      System.String
      System.Xml.XPath.XPathNavigator
      System.Security.Policy.Evidence))
  (define-method-port
    get-compiler-arguments
    Mono.Xml.Xsl.ScriptCompilerInfo
    GetCompilerArguments
    (System.String System.String))
  (define-field-port
    compiler-command-get
    compiler-command-set!
    compiler-command-update!
    (property:)
    Mono.Xml.Xsl.ScriptCompilerInfo
    CompilerCommand
    System.String)
  (define-field-port
    default-compiler-options-get
    default-compiler-options-set!
    default-compiler-options-update!
    (property:)
    Mono.Xml.Xsl.ScriptCompilerInfo
    DefaultCompilerOptions
    System.String)
  (define-field-port
    code-dom-provider
    #f
    #f
    (property:)
    Mono.Xml.Xsl.ScriptCompilerInfo
    CodeDomProvider
    System.CodeDom.Compiler.CodeDomProvider)
  (define-field-port
    extension
    #f
    #f
    (property:)
    Mono.Xml.Xsl.ScriptCompilerInfo
    Extension
    System.String)
  (define-field-port
    source-template
    #f
    #f
    (property:)
    Mono.Xml.Xsl.ScriptCompilerInfo
    SourceTemplate
    System.String))
