(library (system net open-read-completed-event-args)
  (export is? open-read-completed-event-args? result)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Net.OpenReadCompletedEventArgs a))
  (define (open-read-completed-event-args? a)
    (clr-is System.Net.OpenReadCompletedEventArgs a))
  (define-field-port
    result
    #f
    #f
    (property:)
    System.Net.OpenReadCompletedEventArgs
    Result
    System.IO.Stream))
