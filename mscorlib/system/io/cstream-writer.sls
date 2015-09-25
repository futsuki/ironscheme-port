(library (system io cstream-writer)
  (export new
          is?
          cstream-writer?
          write-key
          internal-write-chars
          write
          internal-write-char
          internal-write-string)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.IO.CStreamWriter a ...)))))
  (define (is? a) (clr-is System.IO.CStreamWriter a))
  (define (cstream-writer? a) (clr-is System.IO.CStreamWriter a))
  (define-method-port
    write-key
    System.IO.CStreamWriter
    WriteKey
    (System.Void System.ConsoleKeyInfo))
  (define-method-port
    internal-write-chars
    System.IO.CStreamWriter
    InternalWriteChars
    (System.Void System.Char[] System.Int32))
  (define-method-port
    write
    System.IO.CStreamWriter
    Write
    (System.Void System.String)
    (System.Void System.Char[])
    (System.Void System.Char)
    (System.Void System.Char[] System.Int32 System.Int32))
  (define-method-port
    internal-write-char
    System.IO.CStreamWriter
    InternalWriteChar
    (System.Void System.Char))
  (define-method-port
    internal-write-string
    System.IO.CStreamWriter
    InternalWriteString
    (System.Void System.String)))
