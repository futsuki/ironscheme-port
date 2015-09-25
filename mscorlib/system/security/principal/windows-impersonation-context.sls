(library (system security principal windows-impersonation-context)
  (export is? windows-impersonation-context? dispose undo)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Security.Principal.WindowsImpersonationContext a))
  (define (windows-impersonation-context? a)
    (clr-is System.Security.Principal.WindowsImpersonationContext a))
  (define-method-port
    dispose
    System.Security.Principal.WindowsImpersonationContext
    Dispose
    (System.Void))
  (define-method-port
    undo
    System.Security.Principal.WindowsImpersonationContext
    Undo
    (System.Void)))
