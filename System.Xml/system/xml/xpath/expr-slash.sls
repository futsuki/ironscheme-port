(library (system xml xpath expr-slash)
  (export new
          is?
          expr-slash?
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
        ((_ a ...) #'(clr-new System.Xml.XPath.ExprSLASH a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.ExprSLASH a))
  (define (expr-slash? a) (clr-is System.Xml.XPath.ExprSLASH a))
  (define-method-port
    optimize
    System.Xml.XPath.ExprSLASH
    Optimize
    (System.Xml.XPath.Expression))
  (define-method-port
    evaluate
    System.Xml.XPath.ExprSLASH
    Evaluate
    (System.Object System.Xml.XPath.BaseIterator))
  (define-method-port
    to-string
    System.Xml.XPath.ExprSLASH
    ToString
    (System.String))
  (define-field-port
    left-get
    left-set!
    left-update!
    ()
    System.Xml.XPath.ExprSLASH
    left
    System.Xml.XPath.Expression)
  (define-field-port
    right-get
    right-set!
    right-update!
    ()
    System.Xml.XPath.ExprSLASH
    right
    System.Xml.XPath.NodeSet)
  (define-field-port
    require-sorting?
    #f
    #f
    (property:)
    System.Xml.XPath.ExprSLASH
    RequireSorting
    System.Boolean))
