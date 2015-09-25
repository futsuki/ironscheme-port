(library (system io renamed-event-args)
  (export new is? renamed-event-args? old-full-path old-name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.IO.RenamedEventArgs a ...)))))
  (define (is? a) (clr-is System.IO.RenamedEventArgs a))
  (define (renamed-event-args? a) (clr-is System.IO.RenamedEventArgs a))
  (define-field-port
    old-full-path
    #f
    #f
    (property:)
    System.IO.RenamedEventArgs
    OldFullPath
    System.String)
  (define-field-port
    old-name
    #f
    #f
    (property:)
    System.IO.RenamedEventArgs
    OldName
    System.String))
