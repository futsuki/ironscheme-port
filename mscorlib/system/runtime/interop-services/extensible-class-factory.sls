(library (system runtime interop-services extensible-class-factory)
  (export is?
          extensible-class-factory?
          register-object-creation-callback)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Runtime.InteropServices.ExtensibleClassFactory a))
  (define (extensible-class-factory? a)
    (clr-is System.Runtime.InteropServices.ExtensibleClassFactory a))
  (define-method-port
    register-object-creation-callback
    System.Runtime.InteropServices.ExtensibleClassFactory
    RegisterObjectCreationCallback
    (static:
      System.Void
      System.Runtime.InteropServices.ObjectCreationDelegate)))
