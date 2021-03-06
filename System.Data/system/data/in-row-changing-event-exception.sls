(library (system data in-row-changing-event-exception)
  (export new is? in-row-changing-event-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Data.InRowChangingEventException a ...)))))
  (define (is? a) (clr-is System.Data.InRowChangingEventException a))
  (define (in-row-changing-event-exception? a)
    (clr-is System.Data.InRowChangingEventException a)))
