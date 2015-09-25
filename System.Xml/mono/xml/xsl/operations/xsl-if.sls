(library (mono xml xsl operations xsl-if)
  (export new is? xsl-if? evaluate evaluate-if-true?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Xsl.Operations.XslIf a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.Operations.XslIf a))
  (define (xsl-if? a) (clr-is Mono.Xml.Xsl.Operations.XslIf a))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.Operations.XslIf
    Evaluate
    (System.Void Mono.Xml.Xsl.XslTransformProcessor))
  (define-method-port
    evaluate-if-true?
    Mono.Xml.Xsl.Operations.XslIf
    EvaluateIfTrue
    (System.Boolean Mono.Xml.Xsl.XslTransformProcessor)))
