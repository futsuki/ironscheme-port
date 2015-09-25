(library (system io directory-info)
  (export new
          is?
          directory-info?
          delete
          create
          set-access-control
          get-files
          move-to
          get-directories
          create-subdirectory
          get-file-system-infos
          to-string
          get-access-control
          exists?
          name
          parent
          root)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.IO.DirectoryInfo a ...)))))
  (define (is? a) (clr-is System.IO.DirectoryInfo a))
  (define (directory-info? a) (clr-is System.IO.DirectoryInfo a))
  (define-method-port
    delete
    System.IO.DirectoryInfo
    Delete
    (System.Void System.Boolean)
    (System.Void))
  (define-method-port
    create
    System.IO.DirectoryInfo
    Create
    (System.Void System.Security.AccessControl.DirectorySecurity)
    (System.Void))
  (define-method-port
    set-access-control
    System.IO.DirectoryInfo
    SetAccessControl
    (System.Void System.Security.AccessControl.DirectorySecurity))
  (define-method-port
    get-files
    System.IO.DirectoryInfo
    GetFiles
    (System.IO.FileInfo[] System.String System.IO.SearchOption)
    (System.IO.FileInfo[] System.String)
    (System.IO.FileInfo[]))
  (define-method-port
    move-to
    System.IO.DirectoryInfo
    MoveTo
    (System.Void System.String))
  (define-method-port
    get-directories
    System.IO.DirectoryInfo
    GetDirectories
    (System.IO.DirectoryInfo[] System.String System.IO.SearchOption)
    (System.IO.DirectoryInfo[] System.String)
    (System.IO.DirectoryInfo[]))
  (define-method-port
    create-subdirectory
    System.IO.DirectoryInfo
    CreateSubdirectory
    (System.IO.DirectoryInfo
      System.String
      System.Security.AccessControl.DirectorySecurity)
    (System.IO.DirectoryInfo System.String))
  (define-method-port
    get-file-system-infos
    System.IO.DirectoryInfo
    GetFileSystemInfos
    (System.IO.FileSystemInfo[] System.String)
    (System.IO.FileSystemInfo[]))
  (define-method-port
    to-string
    System.IO.DirectoryInfo
    ToString
    (System.String))
  (define-method-port
    get-access-control
    System.IO.DirectoryInfo
    GetAccessControl
    (System.Security.AccessControl.DirectorySecurity
      System.Security.AccessControl.AccessControlSections)
    (System.Security.AccessControl.DirectorySecurity))
  (define-field-port
    exists?
    #f
    #f
    (property:)
    System.IO.DirectoryInfo
    Exists
    System.Boolean)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.IO.DirectoryInfo
    Name
    System.String)
  (define-field-port
    parent
    #f
    #f
    (property:)
    System.IO.DirectoryInfo
    Parent
    System.IO.DirectoryInfo)
  (define-field-port
    root
    #f
    #f
    (property:)
    System.IO.DirectoryInfo
    Root
    System.IO.DirectoryInfo))
