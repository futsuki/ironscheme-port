(library (system code-dom code-method-invoke-expression)
  (export new
          is?
          code-method-invoke-expression?
          method-get
          method-set!
          method-update!
          parameters)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.CodeDom.CodeMethodInvokeExpression a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeMethodInvokeExpression a))
  (define (code-method-invoke-expression? a)
    (clr-is System.CodeDom.CodeMethodInvokeExpression a))
  (define-field-port
    method-get
    method-set!
    method-update!
    (property:)
    System.CodeDom.CodeMethodInvokeExpression
    Method
    System.CodeDom.CodeMethodReferenceExpression)
  (define-field-port
    parameters
    #f
    #f
    (property:)
    System.CodeDom.CodeMethodInvokeExpression
    Parameters
    System.CodeDom.CodeExpressionCollection))
