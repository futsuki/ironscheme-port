(library (unity-engine networking sync-list-bool)
  (export new is? sync-list-bool? read-instance write-instance)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.Networking.SyncListBool a ...)))))
  (define (is? a) (clr-is UnityEngine.Networking.SyncListBool a))
  (define (sync-list-bool? a)
    (clr-is UnityEngine.Networking.SyncListBool a))
  (define-method-port
    read-instance
    UnityEngine.Networking.SyncListBool
    ReadInstance
    (static:
      UnityEngine.Networking.SyncListBool
      UnityEngine.Networking.NetworkReader))
  (define-method-port
    write-instance
    UnityEngine.Networking.SyncListBool
    WriteInstance
    (static:
      System.Void
      UnityEngine.Networking.NetworkWriter
      UnityEngine.Networking.SyncListBool)))
