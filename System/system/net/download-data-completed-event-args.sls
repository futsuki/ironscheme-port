(library (system net download-data-completed-event-args)
  (export is? download-data-completed-event-args? result)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Net.DownloadDataCompletedEventArgs a))
  (define (download-data-completed-event-args? a)
    (clr-is System.Net.DownloadDataCompletedEventArgs a))
  (define-field-port
    result
    #f
    #f
    (property:)
    System.Net.DownloadDataCompletedEventArgs
    Result
    System.Byte[]))
