(library (system enterprise-services internal assembly-locator)
  (export new is? assembly-locator?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.Internal.AssemblyLocator
             a
             ...)))))
  (define (is? a)
    (clr-is System.EnterpriseServices.Internal.AssemblyLocator a))
  (define (assembly-locator? a)
    (clr-is System.EnterpriseServices.Internal.AssemblyLocator a)))
