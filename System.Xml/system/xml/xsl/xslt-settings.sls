(library (system xml xsl xslt-settings)
  (export new
          is?
          xslt-settings?
          default
          trusted-xslt
          enable-document-function?-get
          enable-document-function?-set!
          enable-document-function?-update!
          enable-script?-get
          enable-script?-set!
          enable-script?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.Xsl.XsltSettings a ...)))))
  (define (is? a) (clr-is System.Xml.Xsl.XsltSettings a))
  (define (xslt-settings? a) (clr-is System.Xml.Xsl.XsltSettings a))
  (define-field-port
    default
    #f
    #f
    (static: property:)
    System.Xml.Xsl.XsltSettings
    Default
    System.Xml.Xsl.XsltSettings)
  (define-field-port
    trusted-xslt
    #f
    #f
    (static: property:)
    System.Xml.Xsl.XsltSettings
    TrustedXslt
    System.Xml.Xsl.XsltSettings)
  (define-field-port
    enable-document-function?-get
    enable-document-function?-set!
    enable-document-function?-update!
    (property:)
    System.Xml.Xsl.XsltSettings
    EnableDocumentFunction
    System.Boolean)
  (define-field-port
    enable-script?-get
    enable-script?-set!
    enable-script?-update!
    (property:)
    System.Xml.Xsl.XsltSettings
    EnableScript
    System.Boolean))
