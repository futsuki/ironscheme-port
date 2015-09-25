(library (system code-dom code-object)
  (export new is? code-object? user-data)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.CodeDom.CodeObject a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeObject a))
  (define (code-object? a) (clr-is System.CodeDom.CodeObject a))
  (define-field-port
    user-data
    #f
    #f
    (property:)
    System.CodeDom.CodeObject
    UserData
    System.Collections.IDictionary))
