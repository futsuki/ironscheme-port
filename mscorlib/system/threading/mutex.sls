(library (system threading mutex)
  (export new
          is?
          mutex?
          set-access-control
          release-mutex
          open-existing
          get-access-control)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Threading.Mutex a ...)))))
  (define (is? a) (clr-is System.Threading.Mutex a))
  (define (mutex? a) (clr-is System.Threading.Mutex a))
  (define-method-port
    set-access-control
    System.Threading.Mutex
    SetAccessControl
    (System.Void System.Security.AccessControl.MutexSecurity))
  (define-method-port
    release-mutex
    System.Threading.Mutex
    ReleaseMutex
    (System.Void))
  (define-method-port
    open-existing
    System.Threading.Mutex
    OpenExisting
    (static:
      System.Threading.Mutex
      System.String
      System.Security.AccessControl.MutexRights)
    (static: System.Threading.Mutex System.String))
  (define-method-port
    get-access-control
    System.Threading.Mutex
    GetAccessControl
    (System.Security.AccessControl.MutexSecurity)))
