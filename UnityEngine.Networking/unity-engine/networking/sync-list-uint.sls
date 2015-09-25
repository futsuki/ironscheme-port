(library (unity-engine networking sync-list-uint)
  (export new is? sync-list-uint? read-instance write-instance)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.Networking.SyncListUInt a ...)))))
  (define (is? a) (clr-is UnityEngine.Networking.SyncListUInt a))
  (define (sync-list-uint? a)
    (clr-is UnityEngine.Networking.SyncListUInt a))
  (define-method-port
    read-instance
    UnityEngine.Networking.SyncListUInt
    ReadInstance
    (static:
      UnityEngine.Networking.SyncListUInt
      UnityEngine.Networking.NetworkReader))
  (define-method-port
    write-instance
    UnityEngine.Networking.SyncListUInt
    WriteInstance
    (static:
      System.Void
      UnityEngine.Networking.NetworkWriter
      UnityEngine.Networking.SyncListUInt)))
