(library (unity-engine networking sync-list-float)
  (export new is? sync-list-float? read-instance write-instance)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.Networking.SyncListFloat a ...)))))
  (define (is? a) (clr-is UnityEngine.Networking.SyncListFloat a))
  (define (sync-list-float? a)
    (clr-is UnityEngine.Networking.SyncListFloat a))
  (define-method-port
    read-instance
    UnityEngine.Networking.SyncListFloat
    ReadInstance
    (static:
      UnityEngine.Networking.SyncListFloat
      UnityEngine.Networking.NetworkReader))
  (define-method-port
    write-instance
    UnityEngine.Networking.SyncListFloat
    WriteInstance
    (static:
      System.Void
      UnityEngine.Networking.NetworkWriter
      UnityEngine.Networking.SyncListFloat)))
