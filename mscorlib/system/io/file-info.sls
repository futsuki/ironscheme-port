(library (system io file-info)
  (export new
          is?
          file-info?
          open-write
          create-text
          delete
          open-read
          append-text
          create
          set-access-control
          open-text
          open
          move-to
          replace
          encrypt
          decrypt
          copy-to
          to-string
          get-access-control
          exists?
          name
          is-read-only?-get
          is-read-only?-set!
          is-read-only?-update!
          length
          directory-name
          directory)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.IO.FileInfo a ...)))))
  (define (is? a) (clr-is System.IO.FileInfo a))
  (define (file-info? a) (clr-is System.IO.FileInfo a))
  (define-method-port
    open-write
    System.IO.FileInfo
    OpenWrite
    (System.IO.FileStream))
  (define-method-port
    create-text
    System.IO.FileInfo
    CreateText
    (System.IO.StreamWriter))
  (define-method-port delete System.IO.FileInfo Delete (System.Void))
  (define-method-port
    open-read
    System.IO.FileInfo
    OpenRead
    (System.IO.FileStream))
  (define-method-port
    append-text
    System.IO.FileInfo
    AppendText
    (System.IO.StreamWriter))
  (define-method-port
    create
    System.IO.FileInfo
    Create
    (System.IO.FileStream))
  (define-method-port
    set-access-control
    System.IO.FileInfo
    SetAccessControl
    (System.Void System.Security.AccessControl.FileSecurity))
  (define-method-port
    open-text
    System.IO.FileInfo
    OpenText
    (System.IO.StreamReader))
  (define-method-port
    open
    System.IO.FileInfo
    Open
    (System.IO.FileStream
      System.IO.FileMode
      System.IO.FileAccess
      System.IO.FileShare)
    (System.IO.FileStream System.IO.FileMode System.IO.FileAccess)
    (System.IO.FileStream System.IO.FileMode))
  (define-method-port
    move-to
    System.IO.FileInfo
    MoveTo
    (System.Void System.String))
  (define-method-port
    replace
    System.IO.FileInfo
    Replace
    (System.IO.FileInfo System.String System.String System.Boolean)
    (System.IO.FileInfo System.String System.String))
  (define-method-port encrypt System.IO.FileInfo Encrypt (System.Void))
  (define-method-port decrypt System.IO.FileInfo Decrypt (System.Void))
  (define-method-port
    copy-to
    System.IO.FileInfo
    CopyTo
    (System.IO.FileInfo System.String System.Boolean)
    (System.IO.FileInfo System.String))
  (define-method-port
    to-string
    System.IO.FileInfo
    ToString
    (System.String))
  (define-method-port
    get-access-control
    System.IO.FileInfo
    GetAccessControl
    (System.Security.AccessControl.FileSecurity
      System.Security.AccessControl.AccessControlSections)
    (System.Security.AccessControl.FileSecurity))
  (define-field-port
    exists?
    #f
    #f
    (property:)
    System.IO.FileInfo
    Exists
    System.Boolean)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.IO.FileInfo
    Name
    System.String)
  (define-field-port
    is-read-only?-get
    is-read-only?-set!
    is-read-only?-update!
    (property:)
    System.IO.FileInfo
    IsReadOnly
    System.Boolean)
  (define-field-port
    length
    #f
    #f
    (property:)
    System.IO.FileInfo
    Length
    System.Int64)
  (define-field-port
    directory-name
    #f
    #f
    (property:)
    System.IO.FileInfo
    DirectoryName
    System.String)
  (define-field-port
    directory
    #f
    #f
    (property:)
    System.IO.FileInfo
    Directory
    System.IO.DirectoryInfo))
