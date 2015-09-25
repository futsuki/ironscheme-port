(library (mono xml xsl xsl-sort-evaluator)
  (export new is? xsl-sort-evaluator? sorted-select)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Xsl.XslSortEvaluator a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.XslSortEvaluator a))
  (define (xsl-sort-evaluator? a)
    (clr-is Mono.Xml.Xsl.XslSortEvaluator a))
  (define-method-port
    sorted-select
    Mono.Xml.Xsl.XslSortEvaluator
    SortedSelect
    (System.Xml.XPath.BaseIterator Mono.Xml.Xsl.XslTransformProcessor)))
