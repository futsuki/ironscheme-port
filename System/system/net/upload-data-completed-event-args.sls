(library (system net upload-data-completed-event-args)
  (export is? upload-data-completed-event-args? result)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Net.UploadDataCompletedEventArgs a))
  (define (upload-data-completed-event-args? a)
    (clr-is System.Net.UploadDataCompletedEventArgs a))
  (define-field-port
    result
    #f
    #f
    (property:)
    System.Net.UploadDataCompletedEventArgs
    Result
    System.Byte[]))
