(library (mono xml xsl operations xsl-avt)
  (export new is? xsl-avt? attempt-pre-calc evaluate)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Xsl.Operations.XslAvt a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.Operations.XslAvt a))
  (define (xsl-avt? a) (clr-is Mono.Xml.Xsl.Operations.XslAvt a))
  (define-method-port
    attempt-pre-calc
    Mono.Xml.Xsl.Operations.XslAvt
    AttemptPreCalc
    (static: System.String Mono.Xml.Xsl.Operations.XslAvt&))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.Operations.XslAvt
    Evaluate
    (System.String Mono.Xml.Xsl.XslTransformProcessor)))
