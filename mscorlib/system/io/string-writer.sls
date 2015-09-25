(library (system io string-writer)
  (export new
          is?
          string-writer?
          write
          get-string-builder
          to-string
          close
          encoding)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.IO.StringWriter a ...)))))
  (define (is? a) (clr-is System.IO.StringWriter a))
  (define (string-writer? a) (clr-is System.IO.StringWriter a))
  (define-method-port
    write
    System.IO.StringWriter
    Write
    (System.Void System.Char[] System.Int32 System.Int32)
    (System.Void System.String)
    (System.Void System.Char))
  (define-method-port
    get-string-builder
    System.IO.StringWriter
    GetStringBuilder
    (System.Text.StringBuilder))
  (define-method-port
    to-string
    System.IO.StringWriter
    ToString
    (System.String))
  (define-method-port close System.IO.StringWriter Close (System.Void))
  (define-field-port
    encoding
    #f
    #f
    (property:)
    System.IO.StringWriter
    Encoding
    System.Text.Encoding))
