(library (system reflection emit method-rental)
  (export is?
          method-rental?
          swap-method-body
          jit-immediate
          jit-on-demand)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Reflection.Emit.MethodRental a))
  (define (method-rental? a)
    (clr-is System.Reflection.Emit.MethodRental a))
  (define-method-port
    swap-method-body
    System.Reflection.Emit.MethodRental
    SwapMethodBody
    (static:
      System.Void
      System.Type
      System.Int32
      System.IntPtr
      System.Int32
      System.Int32))
  (define-field-port
    jit-immediate
    #f
    #f
    (static:)
    System.Reflection.Emit.MethodRental
    JitImmediate
    System.Int32)
  (define-field-port
    jit-on-demand
    #f
    #f
    (static:)
    System.Reflection.Emit.MethodRental
    JitOnDemand
    System.Int32))
