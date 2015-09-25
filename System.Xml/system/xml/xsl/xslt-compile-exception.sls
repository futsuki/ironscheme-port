(library (system xml xsl xslt-compile-exception)
  (export new is? xslt-compile-exception? get-object-data)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Xsl.XsltCompileException a ...)))))
  (define (is? a) (clr-is System.Xml.Xsl.XsltCompileException a))
  (define (xslt-compile-exception? a)
    (clr-is System.Xml.Xsl.XsltCompileException a))
  (define-method-port
    get-object-data
    System.Xml.Xsl.XsltCompileException
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext)))
