(library (system code-dom compiler indented-text-writer)
  (export new
          is?
          indented-text-writer?
          write
          write-line
          write-line-no-tabs
          flush
          close
          default-tab-string
          encoding
          indent-get
          indent-set!
          indent-update!
          inner-writer
          new-line-get
          new-line-set!
          new-line-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.CodeDom.Compiler.IndentedTextWriter
             a
             ...)))))
  (define (is? a) (clr-is System.CodeDom.Compiler.IndentedTextWriter a))
  (define (indented-text-writer? a)
    (clr-is System.CodeDom.Compiler.IndentedTextWriter a))
  (define-method-port
    write
    System.CodeDom.Compiler.IndentedTextWriter
    Write
    (System.Void System.String System.Object System.Object)
    (System.Void System.Char[] System.Int32 System.Int32)
    (System.Void System.String System.Object[])
    (System.Void System.String System.Object)
    (System.Void System.String)
    (System.Void System.Single)
    (System.Void System.Object)
    (System.Void System.Int64)
    (System.Void System.Int32)
    (System.Void System.Double)
    (System.Void System.Char[])
    (System.Void System.Char)
    (System.Void System.Boolean))
  (define-method-port
    write-line
    System.CodeDom.Compiler.IndentedTextWriter
    WriteLine
    (System.Void System.String System.Object System.Object)
    (System.Void System.Char[] System.Int32 System.Int32)
    (System.Void System.String System.Object[])
    (System.Void System.String System.Object)
    (System.Void System.UInt32)
    (System.Void System.String)
    (System.Void System.Single)
    (System.Void System.Object)
    (System.Void System.Int64)
    (System.Void System.Int32)
    (System.Void System.Double)
    (System.Void System.Char[])
    (System.Void System.Char)
    (System.Void System.Boolean)
    (System.Void))
  (define-method-port
    write-line-no-tabs
    System.CodeDom.Compiler.IndentedTextWriter
    WriteLineNoTabs
    (System.Void System.String))
  (define-method-port
    flush
    System.CodeDom.Compiler.IndentedTextWriter
    Flush
    (System.Void))
  (define-method-port
    close
    System.CodeDom.Compiler.IndentedTextWriter
    Close
    (System.Void))
  (define-field-port
    default-tab-string
    #f
    #f
    (static:)
    System.CodeDom.Compiler.IndentedTextWriter
    DefaultTabString
    System.String)
  (define-field-port
    encoding
    #f
    #f
    (property:)
    System.CodeDom.Compiler.IndentedTextWriter
    Encoding
    System.Text.Encoding)
  (define-field-port
    indent-get
    indent-set!
    indent-update!
    (property:)
    System.CodeDom.Compiler.IndentedTextWriter
    Indent
    System.Int32)
  (define-field-port
    inner-writer
    #f
    #f
    (property:)
    System.CodeDom.Compiler.IndentedTextWriter
    InnerWriter
    System.IO.TextWriter)
  (define-field-port
    new-line-get
    new-line-set!
    new-line-update!
    (property:)
    System.CodeDom.Compiler.IndentedTextWriter
    NewLine
    System.String))
