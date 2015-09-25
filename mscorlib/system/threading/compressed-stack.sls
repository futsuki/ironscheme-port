(library (system threading compressed-stack)
  (export is?
          compressed-stack?
          capture
          get-object-data
          get-compressed-stack
          run
          create-copy)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Threading.CompressedStack a))
  (define (compressed-stack? a)
    (clr-is System.Threading.CompressedStack a))
  (define-method-port
    capture
    System.Threading.CompressedStack
    Capture
    (static: System.Threading.CompressedStack))
  (define-method-port
    get-object-data
    System.Threading.CompressedStack
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    get-compressed-stack
    System.Threading.CompressedStack
    GetCompressedStack
    (static: System.Threading.CompressedStack))
  (define-method-port
    run
    System.Threading.CompressedStack
    Run
    (static:
      System.Void
      System.Threading.CompressedStack
      System.Threading.ContextCallback
      System.Object))
  (define-method-port
    create-copy
    System.Threading.CompressedStack
    CreateCopy
    (System.Threading.CompressedStack)))
