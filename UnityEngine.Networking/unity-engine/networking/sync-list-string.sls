(library (unity-engine networking sync-list-string)
  (export new is? sync-list-string? read-instance write-instance)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.Networking.SyncListString a ...)))))
  (define (is? a) (clr-is UnityEngine.Networking.SyncListString a))
  (define (sync-list-string? a)
    (clr-is UnityEngine.Networking.SyncListString a))
  (define-method-port
    read-instance
    UnityEngine.Networking.SyncListString
    ReadInstance
    (static:
      UnityEngine.Networking.SyncListString
      UnityEngine.Networking.NetworkReader))
  (define-method-port
    write-instance
    UnityEngine.Networking.SyncListString
    WriteInstance
    (static:
      System.Void
      UnityEngine.Networking.NetworkWriter
      UnityEngine.Networking.SyncListString)))
