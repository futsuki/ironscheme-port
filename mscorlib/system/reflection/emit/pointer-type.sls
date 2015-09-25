(library (system reflection emit pointer-type)
  (export is? pointer-type? base-type)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Reflection.Emit.PointerType a))
  (define (pointer-type? a)
    (clr-is System.Reflection.Emit.PointerType a))
  (define-field-port
    base-type
    #f
    #f
    (property:)
    System.Reflection.Emit.PointerType
    BaseType
    System.Type))
