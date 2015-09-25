(library (system io binary-reader)
  (export new
          is?
          binary-reader?
          read
          read-bytes
          read-single
          read-byte
          read-sbyte
          read-string
          read-int64
          read-char
          read-int32
          read-decimal
          read-uint32
          read-boolean?
          read-chars
          read-double
          read-uint16
          read-int16
          peek-char
          read-uint64
          close
          base-stream)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.IO.BinaryReader a ...)))))
  (define (is? a) (clr-is System.IO.BinaryReader a))
  (define (binary-reader? a) (clr-is System.IO.BinaryReader a))
  (define-method-port
    read
    System.IO.BinaryReader
    Read
    (System.Int32 System.Char[] System.Int32 System.Int32)
    (System.Int32 System.Byte[] System.Int32 System.Int32)
    (System.Int32))
  (define-method-port
    read-bytes
    System.IO.BinaryReader
    ReadBytes
    (System.Byte[] System.Int32))
  (define-method-port
    read-single
    System.IO.BinaryReader
    ReadSingle
    (System.Single))
  (define-method-port
    read-byte
    System.IO.BinaryReader
    ReadByte
    (System.Byte))
  (define-method-port
    read-sbyte
    System.IO.BinaryReader
    ReadSByte
    (System.SByte))
  (define-method-port
    read-string
    System.IO.BinaryReader
    ReadString
    (System.String))
  (define-method-port
    read-int64
    System.IO.BinaryReader
    ReadInt64
    (System.Int64))
  (define-method-port
    read-char
    System.IO.BinaryReader
    ReadChar
    (System.Char))
  (define-method-port
    read-int32
    System.IO.BinaryReader
    ReadInt32
    (System.Int32))
  (define-method-port
    read-decimal
    System.IO.BinaryReader
    ReadDecimal
    (System.Decimal))
  (define-method-port
    read-uint32
    System.IO.BinaryReader
    ReadUInt32
    (System.UInt32))
  (define-method-port
    read-boolean?
    System.IO.BinaryReader
    ReadBoolean
    (System.Boolean))
  (define-method-port
    read-chars
    System.IO.BinaryReader
    ReadChars
    (System.Char[] System.Int32))
  (define-method-port
    read-double
    System.IO.BinaryReader
    ReadDouble
    (System.Double))
  (define-method-port
    read-uint16
    System.IO.BinaryReader
    ReadUInt16
    (System.UInt16))
  (define-method-port
    read-int16
    System.IO.BinaryReader
    ReadInt16
    (System.Int16))
  (define-method-port
    peek-char
    System.IO.BinaryReader
    PeekChar
    (System.Int32))
  (define-method-port
    read-uint64
    System.IO.BinaryReader
    ReadUInt64
    (System.UInt64))
  (define-method-port close System.IO.BinaryReader Close (System.Void))
  (define-field-port
    base-stream
    #f
    #f
    (property:)
    System.IO.BinaryReader
    BaseStream
    System.IO.Stream))
