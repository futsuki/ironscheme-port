(library (system reflection emit by-ref-type)
  (export is?
          by-ref-type?
          make-array-type
          make-by-ref-type
          make-pointer-type
          base-type)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Reflection.Emit.ByRefType a))
  (define (by-ref-type? a) (clr-is System.Reflection.Emit.ByRefType a))
  (define-method-port
    make-array-type
    System.Reflection.Emit.ByRefType
    MakeArrayType
    (System.Type System.Int32)
    (System.Type))
  (define-method-port
    make-by-ref-type
    System.Reflection.Emit.ByRefType
    MakeByRefType
    (System.Type))
  (define-method-port
    make-pointer-type
    System.Reflection.Emit.ByRefType
    MakePointerType
    (System.Type))
  (define-field-port
    base-type
    #f
    #f
    (property:)
    System.Reflection.Emit.ByRefType
    BaseType
    System.Type))
