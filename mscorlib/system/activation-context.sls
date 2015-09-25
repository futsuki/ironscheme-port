(library (system activation-context)
  (export is?
          activation-context?
          dispose
          create-partial-activation-context
          form
          identity)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.ActivationContext a))
  (define (activation-context? a) (clr-is System.ActivationContext a))
  (define-method-port
    dispose
    System.ActivationContext
    Dispose
    (System.Void))
  (define-method-port
    create-partial-activation-context
    System.ActivationContext
    CreatePartialActivationContext
    (static:
      System.ActivationContext
      System.ApplicationIdentity
      System.String[])
    (static: System.ActivationContext System.ApplicationIdentity))
  (define-field-port
    form
    #f
    #f
    (property:)
    System.ActivationContext
    Form
    System.ActivationContext+ContextForm)
  (define-field-port
    identity
    #f
    #f
    (property:)
    System.ActivationContext
    Identity
    System.ApplicationIdentity))
