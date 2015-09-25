(library (system xml xpath expr-root)
  (export new is? expr-root? evaluate to-string)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.ExprRoot a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.ExprRoot a))
  (define (expr-root? a) (clr-is System.Xml.XPath.ExprRoot a))
  (define-method-port
    evaluate
    System.Xml.XPath.ExprRoot
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    to-string
    System.Xml.XPath.ExprRoot
    ToString
    (System.String)))
