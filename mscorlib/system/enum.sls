(library (system enum)
  (export is?
          enum?
          get-values
          get-hash-code
          parse
          format
          get-name
          equals?
          compare-to
          get-underlying-type
          get-type-code
          get-names
          is-defined?
          to-object
          to-string)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Enum a))
  (define (enum? a) (clr-is System.Enum a))
  (define-method-port
    get-values
    System.Enum
    GetValues
    (static: System.Array System.Type))
  (define-method-port
    get-hash-code
    System.Enum
    GetHashCode
    (System.Int32))
  (define-method-port
    parse
    System.Enum
    Parse
    (static: System.Object System.Type System.String System.Boolean)
    (static: System.Object System.Type System.String))
  (define-method-port
    format
    System.Enum
    Format
    (static: System.String System.Type System.Object System.String))
  (define-method-port
    get-name
    System.Enum
    GetName
    (static: System.String System.Type System.Object))
  (define-method-port
    equals?
    System.Enum
    Equals
    (System.Boolean System.Object))
  (define-method-port
    compare-to
    System.Enum
    CompareTo
    (System.Int32 System.Object))
  (define-method-port
    get-underlying-type
    System.Enum
    GetUnderlyingType
    (static: System.Type System.Type))
  (define-method-port
    get-type-code
    System.Enum
    GetTypeCode
    (System.TypeCode))
  (define-method-port
    get-names
    System.Enum
    GetNames
    (static: System.String[] System.Type))
  (define-method-port
    is-defined?
    System.Enum
    IsDefined
    (static: System.Boolean System.Type System.Object))
  (define-method-port
    to-object
    System.Enum
    ToObject
    (static: System.Object System.Type System.UInt64)
    (static: System.Object System.Type System.UInt32)
    (static: System.Object System.Type System.UInt16)
    (static: System.Object System.Type System.SByte)
    (static: System.Object System.Type System.Object)
    (static: System.Object System.Type System.Int64)
    (static: System.Object System.Type System.Int32)
    (static: System.Object System.Type System.Int16)
    (static: System.Object System.Type System.Byte))
  (define-method-port
    to-string
    System.Enum
    ToString
    (System.String System.String System.IFormatProvider)
    (System.String System.String)
    (System.String System.IFormatProvider)
    (System.String)))
