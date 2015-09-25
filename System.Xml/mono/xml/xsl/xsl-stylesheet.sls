(library (mono xml xsl xsl-stylesheet)
  (export new
          is?
          xsl-stylesheet?
          get-preserve-whitespace?
          get-actual-prefix
          xslt-namespace
          msxslt-namespace
          extension-element-prefixes
          exclude-result-prefixes
          stylesheet-namespaces
          imports
          space-controls
          namespace-aliases
          parameters
          templates
          base-uri
          version
          has-space-controls?
          has-namespace-aliases?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Xsl.XslStylesheet a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.XslStylesheet a))
  (define (xsl-stylesheet? a) (clr-is Mono.Xml.Xsl.XslStylesheet a))
  (define-method-port
    get-preserve-whitespace?
    Mono.Xml.Xsl.XslStylesheet
    GetPreserveWhitespace
    (System.Boolean System.Xml.XPath.XPathNavigator))
  (define-method-port
    get-actual-prefix
    Mono.Xml.Xsl.XslStylesheet
    GetActualPrefix
    (System.String System.String))
  (define-field-port
    xslt-namespace
    #f
    #f
    (static:)
    Mono.Xml.Xsl.XslStylesheet
    XsltNamespace
    System.String)
  (define-field-port
    msxslt-namespace
    #f
    #f
    (static:)
    Mono.Xml.Xsl.XslStylesheet
    MSXsltNamespace
    System.String)
  (define-field-port
    extension-element-prefixes
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XslStylesheet
    ExtensionElementPrefixes
    System.Xml.XmlQualifiedName[])
  (define-field-port
    exclude-result-prefixes
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XslStylesheet
    ExcludeResultPrefixes
    System.Xml.XmlQualifiedName[])
  (define-field-port
    stylesheet-namespaces
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XslStylesheet
    StylesheetNamespaces
    System.Collections.ArrayList)
  (define-field-port
    imports
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XslStylesheet
    Imports
    System.Collections.ArrayList)
  (define-field-port
    space-controls
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XslStylesheet
    SpaceControls
    System.Collections.Hashtable)
  (define-field-port
    namespace-aliases
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XslStylesheet
    NamespaceAliases
    System.Collections.Specialized.NameValueCollection)
  (define-field-port
    parameters
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XslStylesheet
    Parameters
    System.Collections.Hashtable)
  (define-field-port
    templates
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XslStylesheet
    Templates
    Mono.Xml.Xsl.XslTemplateTable)
  (define-field-port
    base-uri
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XslStylesheet
    BaseURI
    System.String)
  (define-field-port
    version
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XslStylesheet
    Version
    System.String)
  (define-field-port
    has-space-controls?
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XslStylesheet
    HasSpaceControls
    System.Boolean)
  (define-field-port
    has-namespace-aliases?
    #f
    #f
    (property:)
    Mono.Xml.Xsl.XslStylesheet
    HasNamespaceAliases
    System.Boolean))