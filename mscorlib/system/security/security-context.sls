(library (system security security-context)
  (export is?
          security-context?
          is-windows-identity-flow-suppressed?
          capture
          restore-flow
          suppress-flow-windows-identity
          suppress-flow
          is-flow-suppressed?
          run
          create-copy)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Security.SecurityContext a))
  (define (security-context? a)
    (clr-is System.Security.SecurityContext a))
  (define-method-port
    is-windows-identity-flow-suppressed?
    System.Security.SecurityContext
    IsWindowsIdentityFlowSuppressed
    (static: System.Boolean))
  (define-method-port
    capture
    System.Security.SecurityContext
    Capture
    (static: System.Security.SecurityContext))
  (define-method-port
    restore-flow
    System.Security.SecurityContext
    RestoreFlow
    (static: System.Void))
  (define-method-port
    suppress-flow-windows-identity
    System.Security.SecurityContext
    SuppressFlowWindowsIdentity
    (static: System.Threading.AsyncFlowControl))
  (define-method-port
    suppress-flow
    System.Security.SecurityContext
    SuppressFlow
    (static: System.Threading.AsyncFlowControl))
  (define-method-port
    is-flow-suppressed?
    System.Security.SecurityContext
    IsFlowSuppressed
    (static: System.Boolean))
  (define-method-port
    run
    System.Security.SecurityContext
    Run
    (static:
      System.Void
      System.Security.SecurityContext
      System.Threading.ContextCallback
      System.Object))
  (define-method-port
    create-copy
    System.Security.SecurityContext
    CreateCopy
    (System.Security.SecurityContext)))
