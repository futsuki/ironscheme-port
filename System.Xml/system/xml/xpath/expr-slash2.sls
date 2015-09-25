(library (system xml xpath expr-slash2)
  (export new
          is?
          expr-slash2?
          optimize
          evaluate
          to-string
          left-get
          left-set!
          left-update!
          right-get
          right-set!
          right-update!
          require-sorting?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Xml.XPath.ExprSLASH2 a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.ExprSLASH2 a))
  (define (expr-slash2? a) (clr-is System.Xml.XPath.ExprSLASH2 a))
  (define-method-port
    optimize
    System.Xml.XPath.ExprSLASH2
    Optimize
    (System.Xml.XPath.Expression))
  (define-method-port
    evaluate
    System.Xml.XPath.ExprSLASH2
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    to-string
    System.Xml.XPath.ExprSLASH2
    ToString
    (System.String))
  (define-field-port
    left-get
    left-set!
    left-update!
    ()
    System.Xml.XPath.ExprSLASH2
    left
    System.Xml.XPath.Expression)
  (define-field-port
    right-get
    right-set!
    right-update!
    ()
    System.Xml.XPath.ExprSLASH2
    right
    System.Xml.XPath.NodeSet)
  (define-field-port
    require-sorting?
    #f
    #f
    (property:)
    System.Xml.XPath.ExprSLASH2
    RequireSorting
    System.Boolean))
