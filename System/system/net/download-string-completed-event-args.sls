(library (system net download-string-completed-event-args)
  (export is? download-string-completed-event-args? result)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Net.DownloadStringCompletedEventArgs a))
  (define (download-string-completed-event-args? a)
    (clr-is System.Net.DownloadStringCompletedEventArgs a))
  (define-field-port
    result
    #f
    #f
    (property:)
    System.Net.DownloadStringCompletedEventArgs
    Result
    System.String))
