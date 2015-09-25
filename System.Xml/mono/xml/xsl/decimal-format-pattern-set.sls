(library (mono xml xsl decimal-format-pattern-set)
  (export new is? decimal-format-pattern-set? format-number)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Xml.Xsl.DecimalFormatPatternSet a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.DecimalFormatPatternSet a))
  (define (decimal-format-pattern-set? a)
    (clr-is Mono.Xml.Xsl.DecimalFormatPatternSet a))
  (define-method-port
    format-number
    Mono.Xml.Xsl.DecimalFormatPatternSet
    FormatNumber
    (System.String System.Double)))
