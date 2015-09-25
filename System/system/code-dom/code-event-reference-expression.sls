(library (system code-dom code-event-reference-expression)
  (export new
          is?
          code-event-reference-expression?
          event-name-get
          event-name-set!
          event-name-update!
          target-object-get
          target-object-set!
          target-object-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.CodeDom.CodeEventReferenceExpression
             a
             ...)))))
  (define (is? a)
    (clr-is System.CodeDom.CodeEventReferenceExpression a))
  (define (code-event-reference-expression? a)
    (clr-is System.CodeDom.CodeEventReferenceExpression a))
  (define-field-port
    event-name-get
    event-name-set!
    event-name-update!
    (property:)
    System.CodeDom.CodeEventReferenceExpression
    EventName
    System.String)
  (define-field-port
    target-object-get
    target-object-set!
    target-object-update!
    (property:)
    System.CodeDom.CodeEventReferenceExpression
    TargetObject
    System.CodeDom.CodeExpression))
