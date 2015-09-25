(library (system runtime serialization formatter-converter)
  (export new
          is?
          formatter-converter?
          to-uint32
          to-double
          to-decimal
          to-int32
          to-date-time
          to-uint16
          convert
          to-byte
          to-uint64
          to-int16
          to-int64
          to-single
          to-char
          to-sbyte
          to-string
          to-boolean?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Serialization.FormatterConverter
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Serialization.FormatterConverter a))
  (define (formatter-converter? a)
    (clr-is System.Runtime.Serialization.FormatterConverter a))
  (define-method-port
    to-uint32
    System.Runtime.Serialization.FormatterConverter
    ToUInt32
    (System.UInt32 System.Object))
  (define-method-port
    to-double
    System.Runtime.Serialization.FormatterConverter
    ToDouble
    (System.Double System.Object))
  (define-method-port
    to-decimal
    System.Runtime.Serialization.FormatterConverter
    ToDecimal
    (System.Decimal System.Object))
  (define-method-port
    to-int32
    System.Runtime.Serialization.FormatterConverter
    ToInt32
    (System.Int32 System.Object))
  (define-method-port
    to-date-time
    System.Runtime.Serialization.FormatterConverter
    ToDateTime
    (System.DateTime System.Object))
  (define-method-port
    to-uint16
    System.Runtime.Serialization.FormatterConverter
    ToUInt16
    (System.UInt16 System.Object))
  (define-method-port
    convert
    System.Runtime.Serialization.FormatterConverter
    Convert
    (System.Object System.Object System.TypeCode)
    (System.Object System.Object System.Type))
  (define-method-port
    to-byte
    System.Runtime.Serialization.FormatterConverter
    ToByte
    (System.Byte System.Object))
  (define-method-port
    to-uint64
    System.Runtime.Serialization.FormatterConverter
    ToUInt64
    (System.UInt64 System.Object))
  (define-method-port
    to-int16
    System.Runtime.Serialization.FormatterConverter
    ToInt16
    (System.Int16 System.Object))
  (define-method-port
    to-int64
    System.Runtime.Serialization.FormatterConverter
    ToInt64
    (System.Int64 System.Object))
  (define-method-port
    to-single
    System.Runtime.Serialization.FormatterConverter
    ToSingle
    (System.Single System.Object))
  (define-method-port
    to-char
    System.Runtime.Serialization.FormatterConverter
    ToChar
    (System.Char System.Object))
  (define-method-port
    to-sbyte
    System.Runtime.Serialization.FormatterConverter
    ToSByte
    (System.SByte System.Object))
  (define-method-port
    to-string
    System.Runtime.Serialization.FormatterConverter
    ToString
    (System.String System.Object))
  (define-method-port
    to-boolean?
    System.Runtime.Serialization.FormatterConverter
    ToBoolean
    (System.Boolean System.Object)))
