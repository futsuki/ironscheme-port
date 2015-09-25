(library (system net upload-string-completed-event-args)
  (export is? upload-string-completed-event-args? result)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Net.UploadStringCompletedEventArgs a))
  (define (upload-string-completed-event-args? a)
    (clr-is System.Net.UploadStringCompletedEventArgs a))
  (define-field-port
    result
    #f
    #f
    (property:)
    System.Net.UploadStringCompletedEventArgs
    Result
    System.String))
