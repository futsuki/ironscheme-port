(library (system runtime remoting services tracking-services)
  (export new
          is?
          tracking-services?
          unregister-tracking-handler
          register-tracking-handler
          registered-handlers)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Services.TrackingServices
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.Services.TrackingServices a))
  (define (tracking-services? a)
    (clr-is System.Runtime.Remoting.Services.TrackingServices a))
  (define-method-port
    unregister-tracking-handler
    System.Runtime.Remoting.Services.TrackingServices
    UnregisterTrackingHandler
    (static:
      System.Void
      System.Runtime.Remoting.Services.ITrackingHandler))
  (define-method-port
    register-tracking-handler
    System.Runtime.Remoting.Services.TrackingServices
    RegisterTrackingHandler
    (static:
      System.Void
      System.Runtime.Remoting.Services.ITrackingHandler))
  (define-field-port
    registered-handlers
    #f
    #f
    (static: property:)
    System.Runtime.Remoting.Services.TrackingServices
    RegisteredHandlers
    System.Runtime.Remoting.Services.ITrackingHandler[]))
