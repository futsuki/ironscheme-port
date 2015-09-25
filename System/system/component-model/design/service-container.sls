(library (system component-model design service-container)
  (export new
          is?
          service-container?
          remove-service
          dispose
          add-service
          get-service)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.Design.ServiceContainer
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.Design.ServiceContainer a))
  (define (service-container? a)
    (clr-is System.ComponentModel.Design.ServiceContainer a))
  (define-method-port
    remove-service
    System.ComponentModel.Design.ServiceContainer
    RemoveService
    (System.Void System.Type System.Boolean)
    (System.Void System.Type))
  (define-method-port
    dispose
    System.ComponentModel.Design.ServiceContainer
    Dispose
    (System.Void))
  (define-method-port
    add-service
    System.ComponentModel.Design.ServiceContainer
    AddService
    (System.Void
      System.Type
      System.ComponentModel.Design.ServiceCreatorCallback
      System.Boolean)
    (System.Void System.Type System.Object System.Boolean)
    (System.Void
      System.Type
      System.ComponentModel.Design.ServiceCreatorCallback)
    (System.Void System.Type System.Object))
  (define-method-port
    get-service
    System.ComponentModel.Design.ServiceContainer
    GetService
    (System.Object System.Type)))
