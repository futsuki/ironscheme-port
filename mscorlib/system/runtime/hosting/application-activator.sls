(library (system runtime hosting application-activator)
  (export new is? application-activator? create-instance)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Hosting.ApplicationActivator
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Hosting.ApplicationActivator a))
  (define (application-activator? a)
    (clr-is System.Runtime.Hosting.ApplicationActivator a))
  (define-method-port
    create-instance
    System.Runtime.Hosting.ApplicationActivator
    CreateInstance
    (System.Runtime.Remoting.ObjectHandle
      System.ActivationContext
      System.String[])
    (System.Runtime.Remoting.ObjectHandle System.ActivationContext)))
