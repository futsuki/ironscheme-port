(library (system io text-writer)
  (export is?
          text-writer?
          dispose
          write
          write-line
          synchronized
          flush
          close
          null
          encoding
          format-provider
          new-line-get
          new-line-set!
          new-line-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.IO.TextWriter a))
  (define (text-writer? a) (clr-is System.IO.TextWriter a))
  (define-method-port
    dispose
    System.IO.TextWriter
    Dispose
    (System.Void))
  (define-method-port
    write
    System.IO.TextWriter
    Write
    (System.Void
      System.String
      System.Object
      System.Object
      System.Object)
    (System.Void System.String System.Object System.Object)
    (System.Void System.Char[] System.Int32 System.Int32)
    (System.Void System.String System.Object[])
    (System.Void System.String System.Object)
    (System.Void System.UInt64)
    (System.Void System.UInt32)
    (System.Void System.String)
    (System.Void System.Single)
    (System.Void System.Object)
    (System.Void System.Int64)
    (System.Void System.Int32)
    (System.Void System.Double)
    (System.Void System.Decimal)
    (System.Void System.Char[])
    (System.Void System.Char)
    (System.Void System.Boolean))
  (define-method-port
    write-line
    System.IO.TextWriter
    WriteLine
    (System.Void
      System.String
      System.Object
      System.Object
      System.Object)
    (System.Void System.String System.Object System.Object)
    (System.Void System.Char[] System.Int32 System.Int32)
    (System.Void System.String System.Object[])
    (System.Void System.String System.Object)
    (System.Void System.UInt64)
    (System.Void System.UInt32)
    (System.Void System.String)
    (System.Void System.Single)
    (System.Void System.Object)
    (System.Void System.Int64)
    (System.Void System.Int32)
    (System.Void System.Double)
    (System.Void System.Decimal)
    (System.Void System.Char[])
    (System.Void System.Char)
    (System.Void System.Boolean)
    (System.Void))
  (define-method-port
    synchronized
    System.IO.TextWriter
    Synchronized
    (static: System.IO.TextWriter System.IO.TextWriter))
  (define-method-port flush System.IO.TextWriter Flush (System.Void))
  (define-method-port close System.IO.TextWriter Close (System.Void))
  (define-field-port
    null
    #f
    #f
    (static:)
    System.IO.TextWriter
    Null
    System.IO.TextWriter)
  (define-field-port
    encoding
    #f
    #f
    (property:)
    System.IO.TextWriter
    Encoding
    System.Text.Encoding)
  (define-field-port
    format-provider
    #f
    #f
    (property:)
    System.IO.TextWriter
    FormatProvider
    System.IFormatProvider)
  (define-field-port
    new-line-get
    new-line-set!
    new-line-update!
    (property:)
    System.IO.TextWriter
    NewLine
    System.String))
