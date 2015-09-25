(library (system runtime remoting services enterprise-services-helper)
  (export new
          is?
          enterprise-services-helper?
          switch-wrappers
          wrap-iunknown-with-com-object
          create-construction-return-message)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Services.EnterpriseServicesHelper
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.Remoting.Services.EnterpriseServicesHelper
      a))
  (define (enterprise-services-helper? a)
    (clr-is
      System.Runtime.Remoting.Services.EnterpriseServicesHelper
      a))
  (define-method-port
    switch-wrappers
    System.Runtime.Remoting.Services.EnterpriseServicesHelper
    SwitchWrappers
    (static:
      System.Void
      System.Runtime.Remoting.Proxies.RealProxy
      System.Runtime.Remoting.Proxies.RealProxy))
  (define-method-port
    wrap-iunknown-with-com-object
    System.Runtime.Remoting.Services.EnterpriseServicesHelper
    WrapIUnknownWithComObject
    (static: System.Object System.IntPtr))
  (define-method-port
    create-construction-return-message
    System.Runtime.Remoting.Services.EnterpriseServicesHelper
    CreateConstructionReturnMessage
    (static:
      System.Runtime.Remoting.Activation.IConstructionReturnMessage
      System.Runtime.Remoting.Activation.IConstructionCallMessage
      System.MarshalByRefObject)))
