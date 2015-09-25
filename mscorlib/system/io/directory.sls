(library (system io directory)
  (export is?
          directory?
          set-last-access-time-utc
          delete
          get-last-write-time-utc
          move
          get-last-write-time
          set-last-access-time
          set-creation-time
          get-file-system-entries
          get-creation-time
          get-logical-drives
          set-current-directory
          set-access-control
          set-last-write-time-utc
          get-files
          get-last-access-time
          get-creation-time-utc
          set-last-write-time
          get-directories
          create-directory
          get-current-directory
          get-directory-root
          get-last-access-time-utc
          get-parent
          exists?
          set-creation-time-utc
          get-access-control)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.IO.Directory a))
  (define (directory? a) (clr-is System.IO.Directory a))
  (define-method-port
    set-last-access-time-utc
    System.IO.Directory
    SetLastAccessTimeUtc
    (static: System.Void System.String System.DateTime))
  (define-method-port
    delete
    System.IO.Directory
    Delete
    (static: System.Void System.String System.Boolean)
    (static: System.Void System.String))
  (define-method-port
    get-last-write-time-utc
    System.IO.Directory
    GetLastWriteTimeUtc
    (static: System.DateTime System.String))
  (define-method-port
    move
    System.IO.Directory
    Move
    (static: System.Void System.String System.String))
  (define-method-port
    get-last-write-time
    System.IO.Directory
    GetLastWriteTime
    (static: System.DateTime System.String))
  (define-method-port
    set-last-access-time
    System.IO.Directory
    SetLastAccessTime
    (static: System.Void System.String System.DateTime))
  (define-method-port
    set-creation-time
    System.IO.Directory
    SetCreationTime
    (static: System.Void System.String System.DateTime))
  (define-method-port
    get-file-system-entries
    System.IO.Directory
    GetFileSystemEntries
    (static: System.String[] System.String System.String)
    (static: System.String[] System.String))
  (define-method-port
    get-creation-time
    System.IO.Directory
    GetCreationTime
    (static: System.DateTime System.String))
  (define-method-port
    get-logical-drives
    System.IO.Directory
    GetLogicalDrives
    (static: System.String[]))
  (define-method-port
    set-current-directory
    System.IO.Directory
    SetCurrentDirectory
    (static: System.Void System.String))
  (define-method-port
    set-access-control
    System.IO.Directory
    SetAccessControl
    (static:
      System.Void
      System.String
      System.Security.AccessControl.DirectorySecurity))
  (define-method-port
    set-last-write-time-utc
    System.IO.Directory
    SetLastWriteTimeUtc
    (static: System.Void System.String System.DateTime))
  (define-method-port
    get-files
    System.IO.Directory
    GetFiles
    (static:
      System.String[]
      System.String
      System.String
      System.IO.SearchOption)
    (static: System.String[] System.String System.String)
    (static: System.String[] System.String))
  (define-method-port
    get-last-access-time
    System.IO.Directory
    GetLastAccessTime
    (static: System.DateTime System.String))
  (define-method-port
    get-creation-time-utc
    System.IO.Directory
    GetCreationTimeUtc
    (static: System.DateTime System.String))
  (define-method-port
    set-last-write-time
    System.IO.Directory
    SetLastWriteTime
    (static: System.Void System.String System.DateTime))
  (define-method-port
    get-directories
    System.IO.Directory
    GetDirectories
    (static:
      System.String[]
      System.String
      System.String
      System.IO.SearchOption)
    (static: System.String[] System.String System.String)
    (static: System.String[] System.String))
  (define-method-port
    create-directory
    System.IO.Directory
    CreateDirectory
    (static:
      System.IO.DirectoryInfo
      System.String
      System.Security.AccessControl.DirectorySecurity)
    (static: System.IO.DirectoryInfo System.String))
  (define-method-port
    get-current-directory
    System.IO.Directory
    GetCurrentDirectory
    (static: System.String))
  (define-method-port
    get-directory-root
    System.IO.Directory
    GetDirectoryRoot
    (static: System.String System.String))
  (define-method-port
    get-last-access-time-utc
    System.IO.Directory
    GetLastAccessTimeUtc
    (static: System.DateTime System.String))
  (define-method-port
    get-parent
    System.IO.Directory
    GetParent
    (static: System.IO.DirectoryInfo System.String))
  (define-method-port
    exists?
    System.IO.Directory
    Exists
    (static: System.Boolean System.String))
  (define-method-port
    set-creation-time-utc
    System.IO.Directory
    SetCreationTimeUtc
    (static: System.Void System.String System.DateTime))
  (define-method-port
    get-access-control
    System.IO.Directory
    GetAccessControl
    (static:
      System.Security.AccessControl.DirectorySecurity
      System.String)
    (static:
      System.Security.AccessControl.DirectorySecurity
      System.String
      System.Security.AccessControl.AccessControlSections)))
