(library (system reflection emit array-type)
  (export is? array-type? get-array-rank base-type)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Reflection.Emit.ArrayType a))
  (define (array-type? a) (clr-is System.Reflection.Emit.ArrayType a))
  (define-method-port
    get-array-rank
    System.Reflection.Emit.ArrayType
    GetArrayRank
    (System.Int32))
  (define-field-port
    base-type
    #f
    #f
    (property:)
    System.Reflection.Emit.ArrayType
    BaseType
    System.Type))
