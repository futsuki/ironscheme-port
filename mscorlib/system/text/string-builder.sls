(library (system text string-builder)
  (export new
          is?
          string-builder?
          append
          replace
          ensure-capacity
          insert
          remove
          append-line
          append-format
          equals?
          copy-to
          to-string
          max-capacity
          capacity-get
          capacity-set!
          capacity-update!
          length-get
          length-set!
          length-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Text.StringBuilder a ...)))))
  (define (is? a) (clr-is System.Text.StringBuilder a))
  (define (string-builder? a) (clr-is System.Text.StringBuilder a))
  (define-method-port
    append
    System.Text.StringBuilder
    Append
    (System.Text.StringBuilder System.String System.Int32 System.Int32)
    (System.Text.StringBuilder System.Char[] System.Int32 System.Int32)
    (System.Text.StringBuilder System.Char System.Int32)
    (System.Text.StringBuilder System.Char)
    (System.Text.StringBuilder System.UInt64)
    (System.Text.StringBuilder System.UInt32)
    (System.Text.StringBuilder System.UInt16)
    (System.Text.StringBuilder System.Single)
    (System.Text.StringBuilder System.SByte)
    (System.Text.StringBuilder System.Object)
    (System.Text.StringBuilder System.Int64)
    (System.Text.StringBuilder System.Int32)
    (System.Text.StringBuilder System.Int16)
    (System.Text.StringBuilder System.Double)
    (System.Text.StringBuilder System.Decimal)
    (System.Text.StringBuilder System.Byte)
    (System.Text.StringBuilder System.Boolean)
    (System.Text.StringBuilder System.String)
    (System.Text.StringBuilder System.Char[]))
  (define-method-port
    replace
    System.Text.StringBuilder
    Replace
    (System.Text.StringBuilder
      System.String
      System.String
      System.Int32
      System.Int32)
    (System.Text.StringBuilder System.String System.String)
    (System.Text.StringBuilder
      System.Char
      System.Char
      System.Int32
      System.Int32)
    (System.Text.StringBuilder System.Char System.Char))
  (define-method-port
    ensure-capacity
    System.Text.StringBuilder
    EnsureCapacity
    (System.Int32 System.Int32))
  (define-method-port
    insert
    System.Text.StringBuilder
    Insert
    (System.Text.StringBuilder
      System.Int32
      System.Char[]
      System.Int32
      System.Int32)
    (System.Text.StringBuilder System.Int32 System.String System.Int32)
    (System.Text.StringBuilder System.Int32 System.UInt64)
    (System.Text.StringBuilder System.Int32 System.UInt32)
    (System.Text.StringBuilder System.Int32 System.UInt16)
    (System.Text.StringBuilder System.Int32 System.Single)
    (System.Text.StringBuilder System.Int32 System.SByte)
    (System.Text.StringBuilder System.Int32 System.Object)
    (System.Text.StringBuilder System.Int32 System.Int64)
    (System.Text.StringBuilder System.Int32 System.Int32)
    (System.Text.StringBuilder System.Int32 System.Int16)
    (System.Text.StringBuilder System.Int32 System.Double)
    (System.Text.StringBuilder System.Int32 System.Decimal)
    (System.Text.StringBuilder System.Int32 System.Char)
    (System.Text.StringBuilder System.Int32 System.Byte)
    (System.Text.StringBuilder System.Int32 System.Boolean)
    (System.Text.StringBuilder System.Int32 System.String)
    (System.Text.StringBuilder System.Int32 System.Char[]))
  (define-method-port
    remove
    System.Text.StringBuilder
    Remove
    (System.Text.StringBuilder System.Int32 System.Int32))
  (define-method-port
    append-line
    System.Text.StringBuilder
    AppendLine
    (System.Text.StringBuilder System.String)
    (System.Text.StringBuilder))
  (define-method-port
    append-format
    System.Text.StringBuilder
    AppendFormat
    (System.Text.StringBuilder
      System.String
      System.Object
      System.Object
      System.Object)
    (System.Text.StringBuilder
      System.String
      System.Object
      System.Object)
    (System.Text.StringBuilder System.String System.Object)
    (System.Text.StringBuilder
      System.IFormatProvider
      System.String
      System.Object[])
    (System.Text.StringBuilder System.String System.Object[]))
  (define-method-port
    equals?
    System.Text.StringBuilder
    Equals
    (System.Boolean System.Text.StringBuilder))
  (define-method-port
    copy-to
    System.Text.StringBuilder
    CopyTo
    (System.Void System.Int32 System.Char[] System.Int32 System.Int32))
  (define-method-port
    to-string
    System.Text.StringBuilder
    ToString
    (System.String System.Int32 System.Int32)
    (System.String))
  (define-field-port
    max-capacity
    #f
    #f
    (property:)
    System.Text.StringBuilder
    MaxCapacity
    System.Int32)
  (define-field-port
    capacity-get
    capacity-set!
    capacity-update!
    (property:)
    System.Text.StringBuilder
    Capacity
    System.Int32)
  (define-field-port
    length-get
    length-set!
    length-update!
    (property:)
    System.Text.StringBuilder
    Length
    System.Int32))
