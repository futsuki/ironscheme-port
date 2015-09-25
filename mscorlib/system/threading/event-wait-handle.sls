(library (system threading event-wait-handle)
  (export new
          is?
          event-wait-handle?
          set?
          set-access-control
          open-existing
          reset?
          get-access-control)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Threading.EventWaitHandle a ...)))))
  (define (is? a) (clr-is System.Threading.EventWaitHandle a))
  (define (event-wait-handle? a)
    (clr-is System.Threading.EventWaitHandle a))
  (define-method-port
    set?
    System.Threading.EventWaitHandle
    Set
    (System.Boolean))
  (define-method-port
    set-access-control
    System.Threading.EventWaitHandle
    SetAccessControl
    (System.Void System.Security.AccessControl.EventWaitHandleSecurity))
  (define-method-port
    open-existing
    System.Threading.EventWaitHandle
    OpenExisting
    (static:
      System.Threading.EventWaitHandle
      System.String
      System.Security.AccessControl.EventWaitHandleRights)
    (static: System.Threading.EventWaitHandle System.String))
  (define-method-port
    reset?
    System.Threading.EventWaitHandle
    Reset
    (System.Boolean))
  (define-method-port
    get-access-control
    System.Threading.EventWaitHandle
    GetAccessControl
    (System.Security.AccessControl.EventWaitHandleSecurity)))
