(library (unity-engine networking network-system crcmessage)
  (export new
          is?
          crcmessage?
          deserialize
          serialize
          scripts-get
          scripts-set!
          scripts-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.NetworkSystem.CRCMessage
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Networking.NetworkSystem.CRCMessage a))
  (define (crcmessage? a)
    (clr-is UnityEngine.Networking.NetworkSystem.CRCMessage a))
  (define-method-port
    deserialize
    UnityEngine.Networking.NetworkSystem.CRCMessage
    Deserialize
    (System.Void UnityEngine.Networking.NetworkReader))
  (define-method-port
    serialize
    UnityEngine.Networking.NetworkSystem.CRCMessage
    Serialize
    (System.Void UnityEngine.Networking.NetworkWriter))
  (define-field-port
    scripts-get
    scripts-set!
    scripts-update!
    ()
    UnityEngine.Networking.NetworkSystem.CRCMessage
    scripts
    UnityEngine.Networking.NetworkSystem.CRCMessageEntry[]))
