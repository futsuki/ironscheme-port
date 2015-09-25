(library (mono xml xsl operations xsl-apply-imports)
  (export new is? xsl-apply-imports? evaluate)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Xsl.Operations.XslApplyImports a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.Operations.XslApplyImports a))
  (define (xsl-apply-imports? a)
    (clr-is Mono.Xml.Xsl.Operations.XslApplyImports a))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.Operations.XslApplyImports
    Evaluate
    (System.Void Mono.Xml.Xsl.XslTransformProcessor)))
