(library (system reflection local-variable-info)
  (export is?
          local-variable-info?
          to-string
          is-pinned?
          local-index
          local-type)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Reflection.LocalVariableInfo a))
  (define (local-variable-info? a)
    (clr-is System.Reflection.LocalVariableInfo a))
  (define-method-port
    to-string
    System.Reflection.LocalVariableInfo
    ToString
    (System.String))
  (define-field-port
    is-pinned?
    #f
    #f
    (property:)
    System.Reflection.LocalVariableInfo
    IsPinned
    System.Boolean)
  (define-field-port
    local-index
    #f
    #f
    (property:)
    System.Reflection.LocalVariableInfo
    LocalIndex
    System.Int32)
  (define-field-port
    local-type
    #f
    #f
    (property:)
    System.Reflection.LocalVariableInfo
    LocalType
    System.Type))
