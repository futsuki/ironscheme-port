(library (system component-model property-changing-event-args)
  (export new is? property-changing-event-args? property-name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.PropertyChangingEventArgs
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.PropertyChangingEventArgs a))
  (define (property-changing-event-args? a)
    (clr-is System.ComponentModel.PropertyChangingEventArgs a))
  (define-field-port
    property-name
    #f
    #f
    (property:)
    System.ComponentModel.PropertyChangingEventArgs
    PropertyName
    System.String))
