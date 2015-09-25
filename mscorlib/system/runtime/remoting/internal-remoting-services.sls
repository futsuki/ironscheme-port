(library (system runtime remoting internal-remoting-services)
  (export new
          is?
          internal-remoting-services?
          remoting-trace
          get-cached-soap-attribute
          remoting-assert
          debug-out-chnl
          set-server-identity)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.InternalRemotingServices
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Remoting.InternalRemotingServices a))
  (define (internal-remoting-services? a)
    (clr-is System.Runtime.Remoting.InternalRemotingServices a))
  (define-method-port
    remoting-trace
    System.Runtime.Remoting.InternalRemotingServices
    RemotingTrace
    (static: System.Void System.Object[]))
  (define-method-port
    get-cached-soap-attribute
    System.Runtime.Remoting.InternalRemotingServices
    GetCachedSoapAttribute
    (static:
      System.Runtime.Remoting.Metadata.SoapAttribute
      System.Object))
  (define-method-port
    remoting-assert
    System.Runtime.Remoting.InternalRemotingServices
    RemotingAssert
    (static: System.Void System.Boolean System.String))
  (define-method-port
    debug-out-chnl
    System.Runtime.Remoting.InternalRemotingServices
    DebugOutChnl
    (static: System.Void System.String))
  (define-method-port
    set-server-identity
    System.Runtime.Remoting.InternalRemotingServices
    SetServerIdentity
    (static:
      System.Void
      System.Runtime.Remoting.Messaging.MethodCall
      System.Object)))
