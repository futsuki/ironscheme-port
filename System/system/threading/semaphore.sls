(library (system threading semaphore)
  (export new
          is?
          semaphore?
          set-access-control
          release
          open-existing
          get-access-control)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Threading.Semaphore a ...)))))
  (define (is? a) (clr-is System.Threading.Semaphore a))
  (define (semaphore? a) (clr-is System.Threading.Semaphore a))
  (define-method-port
    set-access-control
    System.Threading.Semaphore
    SetAccessControl
    (System.Void System.Security.AccessControl.SemaphoreSecurity))
  (define-method-port
    release
    System.Threading.Semaphore
    Release
    (System.Int32 System.Int32)
    (System.Int32))
  (define-method-port
    open-existing
    System.Threading.Semaphore
    OpenExisting
    (static:
      System.Threading.Semaphore
      System.String
      System.Security.AccessControl.SemaphoreRights)
    (static: System.Threading.Semaphore System.String))
  (define-method-port
    get-access-control
    System.Threading.Semaphore
    GetAccessControl
    (System.Security.AccessControl.SemaphoreSecurity)))
