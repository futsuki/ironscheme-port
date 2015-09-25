(library (system code-dom compiler temp-file-collection)
  (export new
          is?
          temp-file-collection?
          add-file
          delete
          get-enumerator
          add-extension
          copy-to
          base-path
          count
          keep-files?-get
          keep-files?-set!
          keep-files?-update!
          temp-dir)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.CodeDom.Compiler.TempFileCollection
             a
             ...)))))
  (define (is? a) (clr-is System.CodeDom.Compiler.TempFileCollection a))
  (define (temp-file-collection? a)
    (clr-is System.CodeDom.Compiler.TempFileCollection a))
  (define-method-port
    add-file
    System.CodeDom.Compiler.TempFileCollection
    AddFile
    (System.Void System.String System.Boolean))
  (define-method-port
    delete
    System.CodeDom.Compiler.TempFileCollection
    Delete
    (System.Void))
  (define-method-port
    get-enumerator
    System.CodeDom.Compiler.TempFileCollection
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    add-extension
    System.CodeDom.Compiler.TempFileCollection
    AddExtension
    (System.String System.String System.Boolean)
    (System.String System.String))
  (define-method-port
    copy-to
    System.CodeDom.Compiler.TempFileCollection
    CopyTo
    (System.Void System.String[] System.Int32))
  (define-field-port
    base-path
    #f
    #f
    (property:)
    System.CodeDom.Compiler.TempFileCollection
    BasePath
    System.String)
  (define-field-port
    count
    #f
    #f
    (property:)
    System.CodeDom.Compiler.TempFileCollection
    Count
    System.Int32)
  (define-field-port
    keep-files?-get
    keep-files?-set!
    keep-files?-update!
    (property:)
    System.CodeDom.Compiler.TempFileCollection
    KeepFiles
    System.Boolean)
  (define-field-port
    temp-dir
    #f
    #f
    (property:)
    System.CodeDom.Compiler.TempFileCollection
    TempDir
    System.String))
