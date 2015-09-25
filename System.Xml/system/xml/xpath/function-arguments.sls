(library (system xml xpath function-arguments)
  (export new is? function-arguments? to-array-list arg tail)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.XPath.FunctionArguments a ...)))))
  (define (is? a) (clr-is System.Xml.XPath.FunctionArguments a))
  (define (function-arguments? a)
    (clr-is System.Xml.XPath.FunctionArguments a))
  (define-method-port
    to-array-list
    System.Xml.XPath.FunctionArguments
    ToArrayList
    (System.Void System.Collections.ArrayList))
  (define-field-port
    arg
    #f
    #f
    (property:)
    System.Xml.XPath.FunctionArguments
    Arg
    System.Xml.XPath.Expression)
  (define-field-port
    tail
    #f
    #f
    (property:)
    System.Xml.XPath.FunctionArguments
    Tail
    System.Xml.XPath.FunctionArguments))
