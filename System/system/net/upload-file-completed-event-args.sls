(library (system net upload-file-completed-event-args)
  (export is? upload-file-completed-event-args? result)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Net.UploadFileCompletedEventArgs a))
  (define (upload-file-completed-event-args? a)
    (clr-is System.Net.UploadFileCompletedEventArgs a))
  (define-field-port
    result
    #f
    #f
    (property:)
    System.Net.UploadFileCompletedEventArgs
    Result
    System.Byte[]))
