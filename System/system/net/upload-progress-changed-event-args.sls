(library (system net upload-progress-changed-event-args)
  (export is?
          upload-progress-changed-event-args?
          bytes-received
          total-bytes-to-receive
          bytes-sent
          total-bytes-to-send)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Net.UploadProgressChangedEventArgs a))
  (define (upload-progress-changed-event-args? a)
    (clr-is System.Net.UploadProgressChangedEventArgs a))
  (define-field-port
    bytes-received
    #f
    #f
    (property:)
    System.Net.UploadProgressChangedEventArgs
    BytesReceived
    System.Int64)
  (define-field-port
    total-bytes-to-receive
    #f
    #f
    (property:)
    System.Net.UploadProgressChangedEventArgs
    TotalBytesToReceive
    System.Int64)
  (define-field-port
    bytes-sent
    #f
    #f
    (property:)
    System.Net.UploadProgressChangedEventArgs
    BytesSent
    System.Int64)
  (define-field-port
    total-bytes-to-send
    #f
    #f
    (property:)
    System.Net.UploadProgressChangedEventArgs
    TotalBytesToSend
    System.Int64))
