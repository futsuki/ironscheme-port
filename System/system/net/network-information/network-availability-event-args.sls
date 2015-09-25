(library (system
          net
          network-information
          network-availability-event-args)
  (export is? network-availability-event-args? is-available?)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is
      System.Net.NetworkInformation.NetworkAvailabilityEventArgs
      a))
  (define (network-availability-event-args? a)
    (clr-is
      System.Net.NetworkInformation.NetworkAvailabilityEventArgs
      a))
  (define-field-port
    is-available?
    #f
    #f
    (property:)
    System.Net.NetworkInformation.NetworkAvailabilityEventArgs
    IsAvailable
    System.Boolean))
