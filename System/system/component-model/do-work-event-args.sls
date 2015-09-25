(library (system component-model do-work-event-args)
  (export new
          is?
          do-work-event-args?
          argument
          result-get
          result-set!
          result-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.DoWorkEventArgs a ...)))))
  (define (is? a) (clr-is System.ComponentModel.DoWorkEventArgs a))
  (define (do-work-event-args? a)
    (clr-is System.ComponentModel.DoWorkEventArgs a))
  (define-field-port
    argument
    #f
    #f
    (property:)
    System.ComponentModel.DoWorkEventArgs
    Argument
    System.Object)
  (define-field-port
    result-get
    result-set!
    result-update!
    (property:)
    System.ComponentModel.DoWorkEventArgs
    Result
    System.Object))
