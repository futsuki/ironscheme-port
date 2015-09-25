(library (mono xml xsl expr-key-container)
  (export new
          is?
          expr-key-container?
          evaluate
          body-expression
          return-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Xsl.ExprKeyContainer a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.ExprKeyContainer a))
  (define (expr-key-container? a)
    (clr-is Mono.Xml.Xsl.ExprKeyContainer a))
  (define-method-port
    evaluate
    Mono.Xml.Xsl.ExprKeyContainer
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-field-port
    body-expression
    #f
    #f
    (property:)
    Mono.Xml.Xsl.ExprKeyContainer
    BodyExpression
    System.Xml.XPath.Expression)
  (define-field-port
    return-type
    #f
    #f
    (property:)
    Mono.Xml.Xsl.ExprKeyContainer
    ReturnType
    System.Xml.XPath.XPathResultType))
