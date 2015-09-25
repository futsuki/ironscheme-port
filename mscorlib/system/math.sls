(library (system math)
  (export is?
          math?
          atan
          log
          tanh
          acos
          asin
          sinh
          floor
          sign
          max
          tan
          sqrt
          div-rem
          atan2
          ceiling
          round
          cos
          sin
          min
          big-mul
          exp
          abs
          ieeeremainder
          pow
          cosh
          truncate
          log10
          e
          pi)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Math a))
  (define (math? a) (clr-is System.Math a))
  (define-method-port
    atan
    System.Math
    Atan
    (static: System.Double System.Double))
  (define-method-port
    log
    System.Math
    Log
    (static: System.Double System.Double)
    (static: System.Double System.Double System.Double))
  (define-method-port
    tanh
    System.Math
    Tanh
    (static: System.Double System.Double))
  (define-method-port
    acos
    System.Math
    Acos
    (static: System.Double System.Double))
  (define-method-port
    asin
    System.Math
    Asin
    (static: System.Double System.Double))
  (define-method-port
    sinh
    System.Math
    Sinh
    (static: System.Double System.Double))
  (define-method-port
    floor
    System.Math
    Floor
    (static: System.Decimal System.Decimal)
    (static: System.Double System.Double))
  (define-method-port
    sign
    System.Math
    Sign
    (static: System.Int32 System.Int16)
    (static: System.Int32 System.SByte)
    (static: System.Int32 System.Int64)
    (static: System.Int32 System.Int32)
    (static: System.Int32 System.Single)
    (static: System.Int32 System.Double)
    (static: System.Int32 System.Decimal))
  (define-method-port
    max
    System.Math
    Max
    (static: System.UInt16 System.UInt16 System.UInt16)
    (static: System.UInt64 System.UInt64 System.UInt64)
    (static: System.UInt32 System.UInt32 System.UInt32)
    (static: System.Int16 System.Int16 System.Int16)
    (static: System.SByte System.SByte System.SByte)
    (static: System.Int64 System.Int64 System.Int64)
    (static: System.Int32 System.Int32 System.Int32)
    (static: System.Single System.Single System.Single)
    (static: System.Double System.Double System.Double)
    (static: System.Decimal System.Decimal System.Decimal)
    (static: System.Byte System.Byte System.Byte))
  (define-method-port
    tan
    System.Math
    Tan
    (static: System.Double System.Double))
  (define-method-port
    sqrt
    System.Math
    Sqrt
    (static: System.Double System.Double))
  (define-method-port
    div-rem
    System.Math
    DivRem
    (static: System.Int64 System.Int64 System.Int64 System.Int64&)
    (static: System.Int32 System.Int32 System.Int32 System.Int32&))
  (define-method-port
    atan2
    System.Math
    Atan2
    (static: System.Double System.Double System.Double))
  (define-method-port
    ceiling
    System.Math
    Ceiling
    (static: System.Double System.Double)
    (static: System.Decimal System.Decimal))
  (define-method-port
    round
    System.Math
    Round
    (static:
      System.Double
      System.Double
      System.Int32
      System.MidpointRounding)
    (static: System.Double System.Double System.MidpointRounding)
    (static: System.Double System.Double System.Int32)
    (static: System.Double System.Double)
    (static:
      System.Decimal
      System.Decimal
      System.Int32
      System.MidpointRounding)
    (static: System.Decimal System.Decimal System.MidpointRounding)
    (static: System.Decimal System.Decimal System.Int32)
    (static: System.Decimal System.Decimal))
  (define-method-port
    cos
    System.Math
    Cos
    (static: System.Double System.Double))
  (define-method-port
    sin
    System.Math
    Sin
    (static: System.Double System.Double))
  (define-method-port
    min
    System.Math
    Min
    (static: System.UInt16 System.UInt16 System.UInt16)
    (static: System.UInt64 System.UInt64 System.UInt64)
    (static: System.UInt32 System.UInt32 System.UInt32)
    (static: System.Int16 System.Int16 System.Int16)
    (static: System.SByte System.SByte System.SByte)
    (static: System.Int64 System.Int64 System.Int64)
    (static: System.Int32 System.Int32 System.Int32)
    (static: System.Single System.Single System.Single)
    (static: System.Double System.Double System.Double)
    (static: System.Decimal System.Decimal System.Decimal)
    (static: System.Byte System.Byte System.Byte))
  (define-method-port
    big-mul
    System.Math
    BigMul
    (static: System.Int64 System.Int32 System.Int32))
  (define-method-port
    exp
    System.Math
    Exp
    (static: System.Double System.Double))
  (define-method-port
    abs
    System.Math
    Abs
    (static: System.Int16 System.Int16)
    (static: System.SByte System.SByte)
    (static: System.Int64 System.Int64)
    (static: System.Int32 System.Int32)
    (static: System.Single System.Single)
    (static: System.Double System.Double)
    (static: System.Decimal System.Decimal))
  (define-method-port
    ieeeremainder
    System.Math
    IEEERemainder
    (static: System.Double System.Double System.Double))
  (define-method-port
    pow
    System.Math
    Pow
    (static: System.Double System.Double System.Double))
  (define-method-port
    cosh
    System.Math
    Cosh
    (static: System.Double System.Double))
  (define-method-port
    truncate
    System.Math
    Truncate
    (static: System.Decimal System.Decimal)
    (static: System.Double System.Double))
  (define-method-port
    log10
    System.Math
    Log10
    (static: System.Double System.Double))
  (define-field-port e #f #f (static:) System.Math E System.Double)
  (define-field-port pi #f #f (static:) System.Math PI System.Double))
