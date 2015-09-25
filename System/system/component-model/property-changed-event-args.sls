(library (system component-model property-changed-event-args)
  (export new is? property-changed-event-args? property-name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.PropertyChangedEventArgs
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.PropertyChangedEventArgs a))
  (define (property-changed-event-args? a)
    (clr-is System.ComponentModel.PropertyChangedEventArgs a))
  (define-field-port
    property-name
    #f
    #f
    (property:)
    System.ComponentModel.PropertyChangedEventArgs
    PropertyName
    System.String))
