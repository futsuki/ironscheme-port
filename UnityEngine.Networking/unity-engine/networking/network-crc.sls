(library (unity-engine networking network-crc)
  (export new
          is?
          network-crc?
          register-behaviour
          reinitialize-script-crcs
          singleton-get
          singleton-set!
          singleton-update!
          scripts)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.Networking.NetworkCRC a ...)))))
  (define (is? a) (clr-is UnityEngine.Networking.NetworkCRC a))
  (define (network-crc? a) (clr-is UnityEngine.Networking.NetworkCRC a))
  (define-method-port
    register-behaviour
    UnityEngine.Networking.NetworkCRC
    RegisterBehaviour
    (static: System.Void System.String System.Int32))
  (define-method-port
    reinitialize-script-crcs
    UnityEngine.Networking.NetworkCRC
    ReinitializeScriptCRCs
    (static: System.Void System.Reflection.Assembly))
  (define-field-port
    singleton-get
    singleton-set!
    singleton-update!
    (static:)
    UnityEngine.Networking.NetworkCRC
    singleton
    UnityEngine.Networking.NetworkCRC)
  (define-field-port
    scripts
    #f
    #f
    (property:)
    UnityEngine.Networking.NetworkCRC
    scripts
    "System.Collections.Generic.Dictionary`2[[System.String, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089],[System.Int32, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"))
