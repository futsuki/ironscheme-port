(library (system code-dom code-attribute-argument)
  (export new
          is?
          code-attribute-argument?
          name-get
          name-set!
          name-update!
          value-get
          value-set!
          value-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.CodeDom.CodeAttributeArgument a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeAttributeArgument a))
  (define (code-attribute-argument? a)
    (clr-is System.CodeDom.CodeAttributeArgument a))
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    System.CodeDom.CodeAttributeArgument
    Name
    System.String)
  (define-field-port
    value-get
    value-set!
    value-update!
    (property:)
    System.CodeDom.CodeAttributeArgument
    Value
    System.CodeDom.CodeExpression))
