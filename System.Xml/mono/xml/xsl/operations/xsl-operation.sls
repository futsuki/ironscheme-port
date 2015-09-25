(library (mono xml xsl operations xsl-operation)
  (export is? xsl-operation? evaluate-as-string evaluate xslt-namespace)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Xml.Xsl.Operations.XslOperation a))
  (define (xsl-operation? a)
    (clr-is Mono.Xml.Xsl.Operations.XslOperation a))
  (define-method-port
    evaluate-as-string
    Mono.Xml.Xsl.Operations.XslOperation
    EvaluateAsString
    (System.String Mono.Xml.Xsl.XslTransformProcessor))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.Operations.XslOperation
    Evaluate
    (System.Void Mono.Xml.Xsl.XslTransformProcessor))
  (define-field-port
    xslt-namespace
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Operations.XslOperation
    XsltNamespace
    System.String))
