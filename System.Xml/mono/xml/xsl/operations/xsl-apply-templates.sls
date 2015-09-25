(library (mono xml xsl operations xsl-apply-templates)
  (export new is? xsl-apply-templates? evaluate)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Xsl.Operations.XslApplyTemplates a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.Operations.XslApplyTemplates a))
  (define (xsl-apply-templates? a)
    (clr-is Mono.Xml.Xsl.Operations.XslApplyTemplates a))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.Operations.XslApplyTemplates
    Evaluate
    (System.Void Mono.Xml.Xsl.XslTransformProcessor)))
