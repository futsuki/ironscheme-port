(library (system
          net
          configuration
          smtp-specified-pickup-directory-element)
  (export new
          is?
          smtp-specified-pickup-directory-element?
          pickup-directory-location-get
          pickup-directory-location-set!
          pickup-directory-location-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Net.Configuration.SmtpSpecifiedPickupDirectoryElement
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Net.Configuration.SmtpSpecifiedPickupDirectoryElement
      a))
  (define (smtp-specified-pickup-directory-element? a)
    (clr-is
      System.Net.Configuration.SmtpSpecifiedPickupDirectoryElement
      a))
  (define-field-port
    pickup-directory-location-get
    pickup-directory-location-set!
    pickup-directory-location-update!
    (property:)
    System.Net.Configuration.SmtpSpecifiedPickupDirectoryElement
    PickupDirectoryLocation
    System.String))
