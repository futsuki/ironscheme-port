(library (system code-dom code-constructor)
  (export new
          is?
          code-constructor?
          base-constructor-args
          chained-constructor-args)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.CodeDom.CodeConstructor a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeConstructor a))
  (define (code-constructor? a)
    (clr-is System.CodeDom.CodeConstructor a))
  (define-field-port
    base-constructor-args
    #f
    #f
    (property:)
    System.CodeDom.CodeConstructor
    BaseConstructorArgs
    System.CodeDom.CodeExpressionCollection)
  (define-field-port
    chained-constructor-args
    #f
    #f
    (property:)
    System.CodeDom.CodeConstructor
    ChainedConstructorArgs
    System.CodeDom.CodeExpressionCollection))
