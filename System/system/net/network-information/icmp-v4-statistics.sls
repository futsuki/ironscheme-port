(library (system net network-information icmp-v4-statistics)
  (export is?
          icmp-v4-statistics?
          address-mask-replies-received
          address-mask-replies-sent
          address-mask-requests-received
          address-mask-requests-sent
          destination-unreachable-messages-received
          destination-unreachable-messages-sent
          echo-replies-received
          echo-replies-sent
          echo-requests-received
          echo-requests-sent
          errors-received
          errors-sent
          messages-received
          messages-sent
          parameter-problems-received
          parameter-problems-sent
          redirects-received
          redirects-sent
          source-quenches-received
          source-quenches-sent
          time-exceeded-messages-received
          time-exceeded-messages-sent
          timestamp-replies-received
          timestamp-replies-sent
          timestamp-requests-received
          timestamp-requests-sent)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Net.NetworkInformation.IcmpV4Statistics a))
  (define (icmp-v4-statistics? a)
    (clr-is System.Net.NetworkInformation.IcmpV4Statistics a))
  (define-field-port
    address-mask-replies-received
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IcmpV4Statistics
    AddressMaskRepliesReceived
    System.Int64)
  (define-field-port
    address-mask-replies-sent
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IcmpV4Statistics
    AddressMaskRepliesSent
    System.Int64)
  (define-field-port
    address-mask-requests-received
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IcmpV4Statistics
    AddressMaskRequestsReceived
    System.Int64)
  (define-field-port
    address-mask-requests-sent
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IcmpV4Statistics
    AddressMaskRequestsSent
    System.Int64)
  (define-field-port
    destination-unreachable-messages-received
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IcmpV4Statistics
    DestinationUnreachableMessagesReceived
    System.Int64)
  (define-field-port
    destination-unreachable-messages-sent
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IcmpV4Statistics
    DestinationUnreachableMessagesSent
    System.Int64)
  (define-field-port
    echo-replies-received
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IcmpV4Statistics
    EchoRepliesReceived
    System.Int64)
  (define-field-port
    echo-replies-sent
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IcmpV4Statistics
    EchoRepliesSent
    System.Int64)
  (define-field-port
    echo-requests-received
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IcmpV4Statistics
    EchoRequestsReceived
    System.Int64)
  (define-field-port
    echo-requests-sent
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IcmpV4Statistics
    EchoRequestsSent
    System.Int64)
  (define-field-port
    errors-received
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IcmpV4Statistics
    ErrorsReceived
    System.Int64)
  (define-field-port
    errors-sent
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IcmpV4Statistics
    ErrorsSent
    System.Int64)
  (define-field-port
    messages-received
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IcmpV4Statistics
    MessagesReceived
    System.Int64)
  (define-field-port
    messages-sent
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IcmpV4Statistics
    MessagesSent
    System.Int64)
  (define-field-port
    parameter-problems-received
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IcmpV4Statistics
    ParameterProblemsReceived
    System.Int64)
  (define-field-port
    parameter-problems-sent
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IcmpV4Statistics
    ParameterProblemsSent
    System.Int64)
  (define-field-port
    redirects-received
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IcmpV4Statistics
    RedirectsReceived
    System.Int64)
  (define-field-port
    redirects-sent
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IcmpV4Statistics
    RedirectsSent
    System.Int64)
  (define-field-port
    source-quenches-received
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IcmpV4Statistics
    SourceQuenchesReceived
    System.Int64)
  (define-field-port
    source-quenches-sent
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IcmpV4Statistics
    SourceQuenchesSent
    System.Int64)
  (define-field-port
    time-exceeded-messages-received
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IcmpV4Statistics
    TimeExceededMessagesReceived
    System.Int64)
  (define-field-port
    time-exceeded-messages-sent
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IcmpV4Statistics
    TimeExceededMessagesSent
    System.Int64)
  (define-field-port
    timestamp-replies-received
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IcmpV4Statistics
    TimestampRepliesReceived
    System.Int64)
  (define-field-port
    timestamp-replies-sent
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IcmpV4Statistics
    TimestampRepliesSent
    System.Int64)
  (define-field-port
    timestamp-requests-received
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IcmpV4Statistics
    TimestampRequestsReceived
    System.Int64)
  (define-field-port
    timestamp-requests-sent
    #f
    #f
    (property:)
    System.Net.NetworkInformation.IcmpV4Statistics
    TimestampRequestsSent
    System.Int64))