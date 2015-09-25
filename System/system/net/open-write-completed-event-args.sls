(library (system net open-write-completed-event-args)
  (export is? open-write-completed-event-args? result)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Net.OpenWriteCompletedEventArgs a))
  (define (open-write-completed-event-args? a)
    (clr-is System.Net.OpenWriteCompletedEventArgs a))
  (define-field-port
    result
    #f
    #f
    (property:)
    System.Net.OpenWriteCompletedEventArgs
    Result
    System.IO.Stream))
