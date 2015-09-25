(library (system net download-progress-changed-event-args)
  (export is?
          download-progress-changed-event-args?
          bytes-received
          total-bytes-to-receive)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Net.DownloadProgressChangedEventArgs a))
  (define (download-progress-changed-event-args? a)
    (clr-is System.Net.DownloadProgressChangedEventArgs a))
  (define-field-port
    bytes-received
    #f
    #f
    (property:)
    System.Net.DownloadProgressChangedEventArgs
    BytesReceived
    System.Int64)
  (define-field-port
    total-bytes-to-receive
    #f
    #f
    (property:)
    System.Net.DownloadProgressChangedEventArgs
    TotalBytesToReceive
    System.Int64))
