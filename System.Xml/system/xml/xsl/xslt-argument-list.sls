(library (system xml xsl xslt-argument-list)
  (export new
          is?
          xslt-argument-list?
          add-extension-object
          remove-param
          get-param
          add-param
          get-extension-object
          remove-extension-object
          clear)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.Xsl.XsltArgumentList a ...)))))
  (define (is? a) (clr-is System.Xml.Xsl.XsltArgumentList a))
  (define (xslt-argument-list? a)
    (clr-is System.Xml.Xsl.XsltArgumentList a))
  (define-method-port
    add-extension-object
    System.Xml.Xsl.XsltArgumentList
    AddExtensionObject
    (System.Void System.String System.Object))
  (define-method-port
    remove-param
    System.Xml.Xsl.XsltArgumentList
    RemoveParam
    (System.Object System.String System.String))
  (define-method-port
    get-param
    System.Xml.Xsl.XsltArgumentList
    GetParam
    (System.Object System.String System.String))
  (define-method-port
    add-param
    System.Xml.Xsl.XsltArgumentList
    AddParam
    (System.Void System.String System.String System.Object))
  (define-method-port
    get-extension-object
    System.Xml.Xsl.XsltArgumentList
    GetExtensionObject
    (System.Object System.String))
  (define-method-port
    remove-extension-object
    System.Xml.Xsl.XsltArgumentList
    RemoveExtensionObject
    (System.Object System.String))
  (define-method-port
    clear
    System.Xml.Xsl.XsltArgumentList
    Clear
    (System.Void)))
