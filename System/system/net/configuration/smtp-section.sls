(library (system net configuration smtp-section)
  (export new
          is?
          smtp-section?
          delivery-method-get
          delivery-method-set!
          delivery-method-update!
          from-get
          from-set!
          from-update!
          network
          specified-pickup-directory)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Net.Configuration.SmtpSection a ...)))))
  (define (is? a) (clr-is System.Net.Configuration.SmtpSection a))
  (define (smtp-section? a)
    (clr-is System.Net.Configuration.SmtpSection a))
  (define-field-port
    delivery-method-get
    delivery-method-set!
    delivery-method-update!
    (property:)
    System.Net.Configuration.SmtpSection
    DeliveryMethod
    System.Net.Mail.SmtpDeliveryMethod)
  (define-field-port
    from-get
    from-set!
    from-update!
    (property:)
    System.Net.Configuration.SmtpSection
    From
    System.String)
  (define-field-port
    network
    #f
    #f
    (property:)
    System.Net.Configuration.SmtpSection
    Network
    System.Net.Configuration.SmtpNetworkElement)
  (define-field-port
    specified-pickup-directory
    #f
    #f
    (property:)
    System.Net.Configuration.SmtpSection
    SpecifiedPickupDirectory
    System.Net.Configuration.SmtpSpecifiedPickupDirectoryElement))
