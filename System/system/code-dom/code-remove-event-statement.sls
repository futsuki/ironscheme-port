(library (system code-dom code-remove-event-statement)
  (export new
          is?
          code-remove-event-statement?
          event-get
          event-set!
          event-update!
          listener-get
          listener-set!
          listener-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.CodeDom.CodeRemoveEventStatement a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeRemoveEventStatement a))
  (define (code-remove-event-statement? a)
    (clr-is System.CodeDom.CodeRemoveEventStatement a))
  (define-field-port
    event-get
    event-set!
    event-update!
    (property:)
    System.CodeDom.CodeRemoveEventStatement
    Event
    System.CodeDom.CodeEventReferenceExpression)
  (define-field-port
    listener-get
    listener-set!
    listener-update!
    (property:)
    System.CodeDom.CodeRemoveEventStatement
    Listener
    System.CodeDom.CodeExpression))
