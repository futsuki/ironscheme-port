(library (system net upload-values-completed-event-args)
  (export is? upload-values-completed-event-args? result)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Net.UploadValuesCompletedEventArgs a))
  (define (upload-values-completed-event-args? a)
    (clr-is System.Net.UploadValuesCompletedEventArgs a))
  (define-field-port
    result
    #f
    #f
    (property:)
    System.Net.UploadValuesCompletedEventArgs
    Result
    System.Byte[]))
