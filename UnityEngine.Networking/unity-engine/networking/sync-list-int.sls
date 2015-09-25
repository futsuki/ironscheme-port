(library (unity-engine networking sync-list-int)
  (export new is? sync-list-int? read-instance write-instance)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.Networking.SyncListInt a ...)))))
  (define (is? a) (clr-is UnityEngine.Networking.SyncListInt a))
  (define (sync-list-int? a)
    (clr-is UnityEngine.Networking.SyncListInt a))
  (define-method-port
    read-instance
    UnityEngine.Networking.SyncListInt
    ReadInstance
    (static:
      UnityEngine.Networking.SyncListInt
      UnityEngine.Networking.NetworkReader))
  (define-method-port
    write-instance
    UnityEngine.Networking.SyncListInt
    WriteInstance
    (static:
      System.Void
      UnityEngine.Networking.NetworkWriter
      UnityEngine.Networking.SyncListInt)))
