(library (system console-cancel-event-args)
  (export is?
          console-cancel-event-args?
          cancel?-get
          cancel?-set!
          cancel?-update!
          special-key)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.ConsoleCancelEventArgs a))
  (define (console-cancel-event-args? a)
    (clr-is System.ConsoleCancelEventArgs a))
  (define-field-port
    cancel?-get
    cancel?-set!
    cancel?-update!
    (property:)
    System.ConsoleCancelEventArgs
    Cancel
    System.Boolean)
  (define-field-port
    special-key
    #f
    #f
    (property:)
    System.ConsoleCancelEventArgs
    SpecialKey
    System.ConsoleSpecialKey))
