(library (system runtime remoting messaging call-context-remoting-data)
  (export new
          is?
          call-context-remoting-data?
          clone
          logical-call-id-get
          logical-call-id-set!
          logical-call-id-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Remoting.Messaging.CallContextRemotingData
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.Remoting.Messaging.CallContextRemotingData
      a))
  (define (call-context-remoting-data? a)
    (clr-is
      System.Runtime.Remoting.Messaging.CallContextRemotingData
      a))
  (define-method-port
    clone
    System.Runtime.Remoting.Messaging.CallContextRemotingData
    Clone
    (System.Object))
  (define-field-port
    logical-call-id-get
    logical-call-id-set!
    logical-call-id-update!
    (property:)
    System.Runtime.Remoting.Messaging.CallContextRemotingData
    LogicalCallID
    System.String))
