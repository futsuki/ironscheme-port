(library (system net network-information ping-completed-event-args)
  (export is? ping-completed-event-args? reply)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Net.NetworkInformation.PingCompletedEventArgs a))
  (define (ping-completed-event-args? a)
    (clr-is System.Net.NetworkInformation.PingCompletedEventArgs a))
  (define-field-port
    reply
    #f
    #f
    (property:)
    System.Net.NetworkInformation.PingCompletedEventArgs
    Reply
    System.Net.NetworkInformation.PingReply))
