(library (system timers timers-description-attribute)
  (export new is? timers-description-attribute? description)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Timers.TimersDescriptionAttribute a ...)))))
  (define (is? a) (clr-is System.Timers.TimersDescriptionAttribute a))
  (define (timers-description-attribute? a)
    (clr-is System.Timers.TimersDescriptionAttribute a))
  (define-field-port
    description
    #f
    #f
    (property:)
    System.Timers.TimersDescriptionAttribute
    Description
    System.String))
