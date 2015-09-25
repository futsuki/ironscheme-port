(library (system component-model initialization-event-attribute)
  (export new is? initialization-event-attribute? event-name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.InitializationEventAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.InitializationEventAttribute a))
  (define (initialization-event-attribute? a)
    (clr-is System.ComponentModel.InitializationEventAttribute a))
  (define-field-port
    event-name
    #f
    #f
    (property:)
    System.ComponentModel.InitializationEventAttribute
    EventName
    System.String))
