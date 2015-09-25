(library (mono xml xsl compiler)
  (export new
          is?
          compiler?
          add-global-variable
          parse-qname-attribute
          parse-avt-attribute
          push-stylesheet
          lookup-namespace
          push-scope
          parse-avt
          compile-decimal-format
          compile-template-content
          parse-qname-list-attribute
          push-input-document
          check-extra-attributes
          pop-scope
          get-namespaces-to-copy
          add-key
          compile
          get-attribute
          compile-output
          add-attribute-set
          compile-pattern
          assert-attribute
          add-variable
          pop-stylesheet
          is-extension-namespace?
          pop-input-document
          parse-yes-no-attribute?
          xslt-namespace
          debugger
          script-manager
          key-compilation-mode?-get
          key-compilation-mode?-set!
          key-compilation-mode?-update!
          input
          current-stylesheet
          current-variable-scope)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Xsl.Compiler a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.Compiler a))
  (define (compiler? a) (clr-is Mono.Xml.Xsl.Compiler a))
  (define-method-port
    add-global-variable
    Mono.Xml.Xsl.Compiler
    AddGlobalVariable
    (System.Void Mono.Xml.Xsl.Operations.XslGlobalVariable))
  (define-method-port
    parse-qname-attribute
    Mono.Xml.Xsl.Compiler
    ParseQNameAttribute
    (System.Xml.XmlQualifiedName System.String System.String)
    (System.Xml.XmlQualifiedName System.String))
  (define-method-port
    parse-avt-attribute
    Mono.Xml.Xsl.Compiler
    ParseAvtAttribute
    (Mono.Xml.Xsl.Operations.XslAvt System.String System.String)
    (Mono.Xml.Xsl.Operations.XslAvt System.String))
  (define-method-port
    push-stylesheet
    Mono.Xml.Xsl.Compiler
    PushStylesheet
    (System.Void Mono.Xml.Xsl.XslStylesheet))
  (define-method-port
    lookup-namespace
    Mono.Xml.Xsl.Compiler
    LookupNamespace
    (System.String System.String))
  (define-method-port
    push-scope
    Mono.Xml.Xsl.Compiler
    PushScope
    (System.Void))
  (define-method-port
    parse-avt
    Mono.Xml.Xsl.Compiler
    ParseAvt
    (Mono.Xml.Xsl.Operations.XslAvt System.String))
  (define-method-port
    compile-decimal-format
    Mono.Xml.Xsl.Compiler
    CompileDecimalFormat
    (System.Void))
  (define-method-port
    compile-template-content
    Mono.Xml.Xsl.Compiler
    CompileTemplateContent
    (Mono.Xml.Xsl.Operations.XslOperation
      System.Xml.XPath.XPathNodeType
      System.Boolean)
    (Mono.Xml.Xsl.Operations.XslOperation
      System.Xml.XPath.XPathNodeType)
    (Mono.Xml.Xsl.Operations.XslOperation))
  (define-method-port
    parse-qname-list-attribute
    Mono.Xml.Xsl.Compiler
    ParseQNameListAttribute
    (System.Xml.XmlQualifiedName[] System.String System.String)
    (System.Xml.XmlQualifiedName[] System.String))
  (define-method-port
    push-input-document
    Mono.Xml.Xsl.Compiler
    PushInputDocument
    (System.Void System.Xml.XPath.XPathNavigator)
    (System.Void System.String))
  (define-method-port
    check-extra-attributes
    Mono.Xml.Xsl.Compiler
    CheckExtraAttributes
    (System.Void System.String System.String[]))
  (define-method-port
    pop-scope
    Mono.Xml.Xsl.Compiler
    PopScope
    (Mono.Xml.Xsl.VariableScope))
  (define-method-port
    get-namespaces-to-copy
    Mono.Xml.Xsl.Compiler
    GetNamespacesToCopy
    (System.Collections.Hashtable))
  (define-method-port
    add-key
    Mono.Xml.Xsl.Compiler
    AddKey
    (System.Void Mono.Xml.Xsl.XslKey))
  (define-method-port
    compile
    Mono.Xml.Xsl.Compiler
    Compile
    (Mono.Xml.Xsl.CompiledStylesheet
      System.Xml.XPath.XPathNavigator
      System.Xml.XmlResolver
      System.Security.Policy.Evidence))
  (define-method-port
    get-attribute
    Mono.Xml.Xsl.Compiler
    GetAttribute
    (System.String System.String System.String)
    (System.String System.String))
  (define-method-port
    compile-output
    Mono.Xml.Xsl.Compiler
    CompileOutput
    (System.Void))
  (define-method-port
    add-attribute-set
    Mono.Xml.Xsl.Compiler
    AddAttributeSet
    (System.Void Mono.Xml.Xsl.XslAttributeSet))
  (define-method-port
    compile-pattern
    Mono.Xml.Xsl.Compiler
    CompilePattern
    (Mono.Xml.XPath.Pattern
      System.String
      System.Xml.XPath.XPathNavigator))
  (define-method-port
    assert-attribute
    Mono.Xml.Xsl.Compiler
    AssertAttribute
    (System.Void System.String System.String)
    (System.Void System.String))
  (define-method-port
    add-variable
    Mono.Xml.Xsl.Compiler
    AddVariable
    (System.Int32 Mono.Xml.Xsl.Operations.XslLocalVariable))
  (define-method-port
    pop-stylesheet
    Mono.Xml.Xsl.Compiler
    PopStylesheet
    (System.Void))
  (define-method-port
    is-extension-namespace?
    Mono.Xml.Xsl.Compiler
    IsExtensionNamespace
    (System.Boolean System.String))
  (define-method-port
    pop-input-document
    Mono.Xml.Xsl.Compiler
    PopInputDocument
    (System.Void))
  (define-method-port
    parse-yes-no-attribute?
    Mono.Xml.Xsl.Compiler
    ParseYesNoAttribute
    (System.Boolean System.String System.String System.Boolean)
    (System.Boolean System.String System.Boolean))
  (define-field-port
    xslt-namespace
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Compiler
    XsltNamespace
    System.String)
  (define-field-port
    debugger
    #f
    #f
    (property:)
    Mono.Xml.Xsl.Compiler
    Debugger
    Mono.Xml.Xsl.XsltDebuggerWrapper)
  (define-field-port
    script-manager
    #f
    #f
    (property:)
    Mono.Xml.Xsl.Compiler
    ScriptManager
    Mono.Xml.Xsl.MSXslScriptManager)
  (define-field-port
    key-compilation-mode?-get
    key-compilation-mode?-set!
    key-compilation-mode?-update!
    (property:)
    Mono.Xml.Xsl.Compiler
    KeyCompilationMode
    System.Boolean)
  (define-field-port
    input
    #f
    #f
    (property:)
    Mono.Xml.Xsl.Compiler
    Input
    System.Xml.XPath.XPathNavigator)
  (define-field-port
    current-stylesheet
    #f
    #f
    (property:)
    Mono.Xml.Xsl.Compiler
    CurrentStylesheet
    Mono.Xml.Xsl.XslStylesheet)
  (define-field-port
    current-variable-scope
    #f
    #f
    (property:)
    Mono.Xml.Xsl.Compiler
    CurrentVariableScope
    Mono.Xml.Xsl.VariableScope))
