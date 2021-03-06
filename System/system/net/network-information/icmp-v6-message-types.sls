(library (system net network-information icmp-v6-message-types)
  (export new
          is?
          icmp-v6-message-types?
          destination-unreachable
          packet-too-big
          time-exceeded
          parameter-problem
          echo-request
          echo-reply
          group-membership-query
          group-membership-report
          group-membership-reduction
          router-solicitation
          router-advertisement
          neighbor-solicitation
          neighbor-advertisement
          redirect
          router-renumbering)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.NetworkInformation.IcmpV6MessageTypes
             a
             ...)))))
  (define (is? a)
    (clr-is System.Net.NetworkInformation.IcmpV6MessageTypes a))
  (define (icmp-v6-message-types? a)
    (clr-is System.Net.NetworkInformation.IcmpV6MessageTypes a))
  (define-field-port
    destination-unreachable
    #f
    #f
    (static:)
    System.Net.NetworkInformation.IcmpV6MessageTypes
    DestinationUnreachable
    System.Int32)
  (define-field-port
    packet-too-big
    #f
    #f
    (static:)
    System.Net.NetworkInformation.IcmpV6MessageTypes
    PacketTooBig
    System.Int32)
  (define-field-port
    time-exceeded
    #f
    #f
    (static:)
    System.Net.NetworkInformation.IcmpV6MessageTypes
    TimeExceeded
    System.Int32)
  (define-field-port
    parameter-problem
    #f
    #f
    (static:)
    System.Net.NetworkInformation.IcmpV6MessageTypes
    ParameterProblem
    System.Int32)
  (define-field-port
    echo-request
    #f
    #f
    (static:)
    System.Net.NetworkInformation.IcmpV6MessageTypes
    EchoRequest
    System.Int32)
  (define-field-port
    echo-reply
    #f
    #f
    (static:)
    System.Net.NetworkInformation.IcmpV6MessageTypes
    EchoReply
    System.Int32)
  (define-field-port
    group-membership-query
    #f
    #f
    (static:)
    System.Net.NetworkInformation.IcmpV6MessageTypes
    GroupMembershipQuery
    System.Int32)
  (define-field-port
    group-membership-report
    #f
    #f
    (static:)
    System.Net.NetworkInformation.IcmpV6MessageTypes
    GroupMembershipReport
    System.Int32)
  (define-field-port
    group-membership-reduction
    #f
    #f
    (static:)
    System.Net.NetworkInformation.IcmpV6MessageTypes
    GroupMembershipReduction
    System.Int32)
  (define-field-port
    router-solicitation
    #f
    #f
    (static:)
    System.Net.NetworkInformation.IcmpV6MessageTypes
    RouterSolicitation
    System.Int32)
  (define-field-port
    router-advertisement
    #f
    #f
    (static:)
    System.Net.NetworkInformation.IcmpV6MessageTypes
    RouterAdvertisement
    System.Int32)
  (define-field-port
    neighbor-solicitation
    #f
    #f
    (static:)
    System.Net.NetworkInformation.IcmpV6MessageTypes
    NeighborSolicitation
    System.Int32)
  (define-field-port
    neighbor-advertisement
    #f
    #f
    (static:)
    System.Net.NetworkInformation.IcmpV6MessageTypes
    NeighborAdvertisement
    System.Int32)
  (define-field-port
    redirect
    #f
    #f
    (static:)
    System.Net.NetworkInformation.IcmpV6MessageTypes
    Redirect
    System.Int32)
  (define-field-port
    router-renumbering
    #f
    #f
    (static:)
    System.Net.NetworkInformation.IcmpV6MessageTypes
    RouterRenumbering
    System.Int32))
