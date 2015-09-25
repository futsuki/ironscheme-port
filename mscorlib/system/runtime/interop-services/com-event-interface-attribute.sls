(library (system runtime interop-services com-event-interface-attribute)
  (export new
          is?
          com-event-interface-attribute?
          event-provider
          source-interface)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.ComEventInterfaceAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.InteropServices.ComEventInterfaceAttribute
      a))
  (define (com-event-interface-attribute? a)
    (clr-is
      System.Runtime.InteropServices.ComEventInterfaceAttribute
      a))
  (define-field-port
    event-provider
    #f
    #f
    (property:)
    System.Runtime.InteropServices.ComEventInterfaceAttribute
    EventProvider
    System.Type)
  (define-field-port
    source-interface
    #f
    #f
    (property:)
    System.Runtime.InteropServices.ComEventInterfaceAttribute
    SourceInterface
    System.Type))
