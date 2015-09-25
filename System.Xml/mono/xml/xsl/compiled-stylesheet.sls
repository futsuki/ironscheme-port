(library (mono xml xsl compiled-stylesheet)
  (export new
          is?
          compiled-stylesheet?
          resolve-variable
          lookup-decimal-format
          resolve-key
          resolve-attribute-set
          variables
          style
          namespace-manager
          keys
          outputs
          script-manager)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Xsl.CompiledStylesheet a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.CompiledStylesheet a))
  (define (compiled-stylesheet? a)
    (clr-is Mono.Xml.Xsl.CompiledStylesheet a))
  (define-method-port
    resolve-variable
    Mono.Xml.Xsl.CompiledStylesheet
    ResolveVariable
    (Mono.Xml.Xsl.Operations.XslGeneralVariable
      System.Xml.XmlQualifiedName))
  (define-method-port
    lookup-decimal-format
    Mono.Xml.Xsl.CompiledStylesheet
    LookupDecimalFormat
    (Mono.Xml.Xsl.XslDecimalFormat System.Xml.XmlQualifiedName))
  (define-method-port
    resolve-key
    Mono.Xml.Xsl.CompiledStylesheet
    ResolveKey
    (System.Collections.ArrayList System.Xml.XmlQualifiedName))
  (define-method-port
    resolve-attribute-set
    Mono.Xml.Xsl.CompiledStylesheet
    ResolveAttributeSet
    (Mono.Xml.Xsl.XslAttributeSet System.Xml.XmlQualifiedName))
  (define-field-port
    variables
    #f
    #f
    (property:)
    Mono.Xml.Xsl.CompiledStylesheet
    Variables
    System.Collections.Hashtable)
  (define-field-port
    style
    #f
    #f
    (property:)
    Mono.Xml.Xsl.CompiledStylesheet
    Style
    Mono.Xml.Xsl.XslStylesheet)
  (define-field-port
    namespace-manager
    #f
    #f
    (property:)
    Mono.Xml.Xsl.CompiledStylesheet
    NamespaceManager
    System.Xml.XmlNamespaceManager)
  (define-field-port
    keys
    #f
    #f
    (property:)
    Mono.Xml.Xsl.CompiledStylesheet
    Keys
    System.Collections.Hashtable)
  (define-field-port
    outputs
    #f
    #f
    (property:)
    Mono.Xml.Xsl.CompiledStylesheet
    Outputs
    System.Collections.Hashtable)
  (define-field-port
    script-manager
    #f
    #f
    (property:)
    Mono.Xml.Xsl.CompiledStylesheet
    ScriptManager
    Mono.Xml.Xsl.MSXslScriptManager))
