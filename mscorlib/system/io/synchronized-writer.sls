(library (system io synchronized-writer)
  (export new
          is?
          synchronized-writer?
          write
          write-line
          flush
          close
          encoding
          format-provider
          new-line-get
          new-line-set!
          new-line-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.IO.SynchronizedWriter a ...)))))
  (define (is? a) (clr-is System.IO.SynchronizedWriter a))
  (define (synchronized-writer? a)
    (clr-is System.IO.SynchronizedWriter a))
  (define-method-port
    write
    System.IO.SynchronizedWriter
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
    (System.Void System.Decimal)
    (System.Void System.Char[])
    (System.Void System.Char)
    (System.Void System.Boolean))
  (define-method-port
    write-line
    System.IO.SynchronizedWriter
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
    flush
    System.IO.SynchronizedWriter
    Flush
    (System.Void))
  (define-method-port
    close
    System.IO.SynchronizedWriter
    Close
    (System.Void))
  (define-field-port
    encoding
    #f
    #f
    (property:)
    System.IO.SynchronizedWriter
    Encoding
    System.Text.Encoding)
  (define-field-port
    format-provider
    #f
    #f
    (property:)
    System.IO.SynchronizedWriter
    FormatProvider
    System.IFormatProvider)
  (define-field-port
    new-line-get
    new-line-set!
    new-line-update!
    (property:)
    System.IO.SynchronizedWriter
    NewLine
    System.String))
