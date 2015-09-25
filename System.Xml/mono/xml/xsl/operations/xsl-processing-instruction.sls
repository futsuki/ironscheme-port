(library (mono xml xsl operations xsl-processing-instruction)
  (export new is? xsl-processing-instruction? evaluate)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Mono.Xml.Xsl.Operations.XslProcessingInstruction
             a
             ...)))))
  (define (is? a)
    (clr-is Mono.Xml.Xsl.Operations.XslProcessingInstruction a))
  (define (xsl-processing-instruction? a)
    (clr-is Mono.Xml.Xsl.Operations.XslProcessingInstruction a))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.Operations.XslProcessingInstruction
    Evaluate
    (System.Void Mono.Xml.Xsl.XslTransformProcessor)))
