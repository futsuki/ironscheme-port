(library (system configuration context-information)
  (export is?
          context-information?
          get-section
          hosting-context
          is-machine-level?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Configuration.ContextInformation a))
  (define (context-information? a)
    (clr-is System.Configuration.ContextInformation a))
  (define-method-port
    get-section
    System.Configuration.ContextInformation
    GetSection
    (System.Object System.String))
  (define-field-port
    hosting-context
    #f
    #f
    (property:)
    System.Configuration.ContextInformation
    HostingContext
    System.Object)
  (define-field-port
    is-machine-level?
    #f
    #f
    (property:)
    System.Configuration.ContextInformation
    IsMachineLevel
    System.Boolean))
