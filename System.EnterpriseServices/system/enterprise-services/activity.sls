(library (system enterprise-services activity)
  (export new
          is?
          activity?
          unbind-from-thread
          bind-to-current-thread
          asynchronous-call
          synchronous-call)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.EnterpriseServices.Activity a ...)))))
  (define (is? a) (clr-is System.EnterpriseServices.Activity a))
  (define (activity? a) (clr-is System.EnterpriseServices.Activity a))
  (define-method-port
    unbind-from-thread
    System.EnterpriseServices.Activity
    UnbindFromThread
    (System.Void))
  (define-method-port
    bind-to-current-thread
    System.EnterpriseServices.Activity
    BindToCurrentThread
    (System.Void))
  (define-method-port
    asynchronous-call
    System.EnterpriseServices.Activity
    AsynchronousCall
    (System.Void System.EnterpriseServices.IServiceCall))
  (define-method-port
    synchronous-call
    System.EnterpriseServices.Activity
    SynchronousCall
    (System.Void System.EnterpriseServices.IServiceCall)))
