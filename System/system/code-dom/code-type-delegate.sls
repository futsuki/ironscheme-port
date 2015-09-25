(library (system code-dom code-type-delegate)
  (export new
          is?
          code-type-delegate?
          parameters
          return-type-get
          return-type-set!
          return-type-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.CodeDom.CodeTypeDelegate a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeTypeDelegate a))
  (define (code-type-delegate? a)
    (clr-is System.CodeDom.CodeTypeDelegate a))
  (define-field-port
    parameters
    #f
    #f
    (property:)
    System.CodeDom.CodeTypeDelegate
    Parameters
    System.CodeDom.CodeParameterDeclarationExpressionCollection)
  (define-field-port
    return-type-get
    return-type-set!
    return-type-update!
    (property:)
    System.CodeDom.CodeTypeDelegate
    ReturnType
    System.CodeDom.CodeTypeReference))
