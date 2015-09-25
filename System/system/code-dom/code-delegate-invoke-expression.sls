(library (system code-dom code-delegate-invoke-expression)
  (export new
          is?
          code-delegate-invoke-expression?
          parameters
          target-object-get
          target-object-set!
          target-object-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.CodeDom.CodeDelegateInvokeExpression
             a
             ...)))))
  (define (is? a)
    (clr-is System.CodeDom.CodeDelegateInvokeExpression a))
  (define (code-delegate-invoke-expression? a)
    (clr-is System.CodeDom.CodeDelegateInvokeExpression a))
  (define-field-port
    parameters
    #f
    #f
    (property:)
    System.CodeDom.CodeDelegateInvokeExpression
    Parameters
    System.CodeDom.CodeExpressionCollection)
  (define-field-port
    target-object-get
    target-object-set!
    target-object-update!
    (property:)
    System.CodeDom.CodeDelegateInvokeExpression
    TargetObject
    System.CodeDom.CodeExpression))
