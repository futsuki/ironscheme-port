(library (system reflection emit local-builder)
  (export is?
          local-builder?
          set-local-sym-info
          local-type
          is-pinned?
          local-index)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Reflection.Emit.LocalBuilder a))
  (define (local-builder? a)
    (clr-is System.Reflection.Emit.LocalBuilder a))
  (define-method-port
    set-local-sym-info
    System.Reflection.Emit.LocalBuilder
    SetLocalSymInfo
    (System.Void System.String)
    (System.Void System.String System.Int32 System.Int32))
  (define-field-port
    local-type
    #f
    #f
    (property:)
    System.Reflection.Emit.LocalBuilder
    LocalType
    System.Type)
  (define-field-port
    is-pinned?
    #f
    #f
    (property:)
    System.Reflection.Emit.LocalBuilder
    IsPinned
    System.Boolean)
  (define-field-port
    local-index
    #f
    #f
    (property:)
    System.Reflection.Emit.LocalBuilder
    LocalIndex
    System.Int32))
