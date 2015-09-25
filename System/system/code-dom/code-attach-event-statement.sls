(library (system code-dom code-attach-event-statement)
  (export new
          is?
          code-attach-event-statement?
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
         #'(clr-new System.CodeDom.CodeAttachEventStatement a ...)))))
  (define (is? a) (clr-is System.CodeDom.CodeAttachEventStatement a))
  (define (code-attach-event-statement? a)
    (clr-is System.CodeDom.CodeAttachEventStatement a))
  (define-field-port
    event-get
    event-set!
    event-update!
    (property:)
    System.CodeDom.CodeAttachEventStatement
    Event
    System.CodeDom.CodeEventReferenceExpression)
  (define-field-port
    listener-get
    listener-set!
    listener-update!
    (property:)
    System.CodeDom.CodeAttachEventStatement
    Listener
    System.CodeDom.CodeExpression))
