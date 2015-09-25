(library (system io file)
  (export is?
          file?
          append-all-text
          read-all-bytes
          create-text
          set-last-access-time-utc
          delete
          get-last-write-time-utc
          move
          get-last-write-time
          open-read
          get-attributes
          append-text
          set-creation-time
          get-creation-time
          read-all-lines
          create
          read-all-text
          set-access-control
          set-last-write-time-utc
          open-text
          open
          set-attributes
          get-last-access-time
          get-creation-time-utc
          set-last-write-time
          write-all-lines
          replace
          encrypt
          write-all-bytes
          write-all-text
          decrypt
          get-last-access-time-utc
          set-last-access-time
          copy
          exists?
          set-creation-time-utc
          open-write
          get-access-control)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.IO.File a))
  (define (file? a) (clr-is System.IO.File a))
  (define-method-port
    append-all-text
    System.IO.File
    AppendAllText
    (static:
      System.Void
      System.String
      System.String
      System.Text.Encoding)
    (static: System.Void System.String System.String))
  (define-method-port
    read-all-bytes
    System.IO.File
    ReadAllBytes
    (static: System.Byte[] System.String))
  (define-method-port
    create-text
    System.IO.File
    CreateText
    (static: System.IO.StreamWriter System.String))
  (define-method-port
    set-last-access-time-utc
    System.IO.File
    SetLastAccessTimeUtc
    (static: System.Void System.String System.DateTime))
  (define-method-port
    delete
    System.IO.File
    Delete
    (static: System.Void System.String))
  (define-method-port
    get-last-write-time-utc
    System.IO.File
    GetLastWriteTimeUtc
    (static: System.DateTime System.String))
  (define-method-port
    move
    System.IO.File
    Move
    (static: System.Void System.String System.String))
  (define-method-port
    get-last-write-time
    System.IO.File
    GetLastWriteTime
    (static: System.DateTime System.String))
  (define-method-port
    open-read
    System.IO.File
    OpenRead
    (static: System.IO.FileStream System.String))
  (define-method-port
    get-attributes
    System.IO.File
    GetAttributes
    (static: System.IO.FileAttributes System.String))
  (define-method-port
    append-text
    System.IO.File
    AppendText
    (static: System.IO.StreamWriter System.String))
  (define-method-port
    set-creation-time
    System.IO.File
    SetCreationTime
    (static: System.Void System.String System.DateTime))
  (define-method-port
    get-creation-time
    System.IO.File
    GetCreationTime
    (static: System.DateTime System.String))
  (define-method-port
    read-all-lines
    System.IO.File
    ReadAllLines
    (static: System.String[] System.String System.Text.Encoding)
    (static: System.String[] System.String))
  (define-method-port
    create
    System.IO.File
    Create
    (static:
      System.IO.FileStream
      System.String
      System.Int32
      System.IO.FileOptions
      System.Security.AccessControl.FileSecurity)
    (static:
      System.IO.FileStream
      System.String
      System.Int32
      System.IO.FileOptions)
    (static: System.IO.FileStream System.String System.Int32)
    (static: System.IO.FileStream System.String))
  (define-method-port
    read-all-text
    System.IO.File
    ReadAllText
    (static: System.String System.String System.Text.Encoding)
    (static: System.String System.String))
  (define-method-port
    set-access-control
    System.IO.File
    SetAccessControl
    (static:
      System.Void
      System.String
      System.Security.AccessControl.FileSecurity))
  (define-method-port
    set-last-write-time-utc
    System.IO.File
    SetLastWriteTimeUtc
    (static: System.Void System.String System.DateTime))
  (define-method-port
    open-text
    System.IO.File
    OpenText
    (static: System.IO.StreamReader System.String))
  (define-method-port
    open
    System.IO.File
    Open
    (static:
      System.IO.FileStream
      System.String
      System.IO.FileMode
      System.IO.FileAccess
      System.IO.FileShare)
    (static:
      System.IO.FileStream
      System.String
      System.IO.FileMode
      System.IO.FileAccess)
    (static: System.IO.FileStream System.String System.IO.FileMode))
  (define-method-port
    set-attributes
    System.IO.File
    SetAttributes
    (static: System.Void System.String System.IO.FileAttributes))
  (define-method-port
    get-last-access-time
    System.IO.File
    GetLastAccessTime
    (static: System.DateTime System.String))
  (define-method-port
    get-creation-time-utc
    System.IO.File
    GetCreationTimeUtc
    (static: System.DateTime System.String))
  (define-method-port
    set-last-write-time
    System.IO.File
    SetLastWriteTime
    (static: System.Void System.String System.DateTime))
  (define-method-port
    write-all-lines
    System.IO.File
    WriteAllLines
    (static:
      System.Void
      System.String
      System.String[]
      System.Text.Encoding)
    (static: System.Void System.String System.String[]))
  (define-method-port
    replace
    System.IO.File
    Replace
    (static:
      System.Void
      System.String
      System.String
      System.String
      System.Boolean)
    (static: System.Void System.String System.String System.String))
  (define-method-port
    encrypt
    System.IO.File
    Encrypt
    (static: System.Void System.String))
  (define-method-port
    write-all-bytes
    System.IO.File
    WriteAllBytes
    (static: System.Void System.String System.Byte[]))
  (define-method-port
    write-all-text
    System.IO.File
    WriteAllText
    (static:
      System.Void
      System.String
      System.String
      System.Text.Encoding)
    (static: System.Void System.String System.String))
  (define-method-port
    decrypt
    System.IO.File
    Decrypt
    (static: System.Void System.String))
  (define-method-port
    get-last-access-time-utc
    System.IO.File
    GetLastAccessTimeUtc
    (static: System.DateTime System.String))
  (define-method-port
    set-last-access-time
    System.IO.File
    SetLastAccessTime
    (static: System.Void System.String System.DateTime))
  (define-method-port
    copy
    System.IO.File
    Copy
    (static: System.Void System.String System.String System.Boolean)
    (static: System.Void System.String System.String))
  (define-method-port
    exists?
    System.IO.File
    Exists
    (static: System.Boolean System.String))
  (define-method-port
    set-creation-time-utc
    System.IO.File
    SetCreationTimeUtc
    (static: System.Void System.String System.DateTime))
  (define-method-port
    open-write
    System.IO.File
    OpenWrite
    (static: System.IO.FileStream System.String))
  (define-method-port
    get-access-control
    System.IO.File
    GetAccessControl
    (static:
      System.Security.AccessControl.FileSecurity
      System.String
      System.Security.AccessControl.AccessControlSections)
    (static: System.Security.AccessControl.FileSecurity System.String)))
