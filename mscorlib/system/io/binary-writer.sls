(library (system io binary-writer)
  (export new
          is?
          binary-writer?
          write
          seek
          flush
          close
          null
          base-stream)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.IO.BinaryWriter a ...)))))
  (define (is? a) (clr-is System.IO.BinaryWriter a))
  (define (binary-writer? a) (clr-is System.IO.BinaryWriter a))
  (define-method-port
    write
    System.IO.BinaryWriter
    Write
    (System.Void System.UInt64)
    (System.Void System.UInt32)
    (System.Void System.UInt16)
    (System.Void System.String)
    (System.Void System.Single)
    (System.Void System.SByte)
    (System.Void System.Int64)
    (System.Void System.Int32)
    (System.Void System.Int16)
    (System.Void System.Double)
    (System.Void System.Decimal)
    (System.Void System.Char[] System.Int32 System.Int32)
    (System.Void System.Char[])
    (System.Void System.Char)
    (System.Void System.Byte[] System.Int32 System.Int32)
    (System.Void System.Byte[])
    (System.Void System.Byte)
    (System.Void System.Boolean))
  (define-method-port
    seek
    System.IO.BinaryWriter
    Seek
    (System.Int64 System.Int32 System.IO.SeekOrigin))
  (define-method-port flush System.IO.BinaryWriter Flush (System.Void))
  (define-method-port close System.IO.BinaryWriter Close (System.Void))
  (define-field-port
    null
    #f
    #f
    (static:)
    System.IO.BinaryWriter
    Null
    System.IO.BinaryWriter)
  (define-field-port
    base-stream
    #f
    #f
    (property:)
    System.IO.BinaryWriter
    BaseStream
    System.IO.Stream))
