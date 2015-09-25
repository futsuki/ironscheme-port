(library (system io path)
  (export is?
          path?
          change-extension
          get-directory-name
          combine
          get-invalid-file-name-chars
          get-full-path
          get-file-name
          get-invalid-path-chars
          get-file-name-without-extension
          get-path-root
          get-extension
          is-path-rooted?
          get-random-file-name
          get-temp-path
          has-extension?
          get-temp-file-name
          invalid-path-chars
          alt-directory-separator-char
          directory-separator-char
          path-separator
          volume-separator-char)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.IO.Path a))
  (define (path? a) (clr-is System.IO.Path a))
  (define-method-port
    change-extension
    System.IO.Path
    ChangeExtension
    (static: System.String System.String System.String))
  (define-method-port
    get-directory-name
    System.IO.Path
    GetDirectoryName
    (static: System.String System.String))
  (define-method-port
    combine
    System.IO.Path
    Combine
    (static: System.String System.String System.String))
  (define-method-port
    get-invalid-file-name-chars
    System.IO.Path
    GetInvalidFileNameChars
    (static: System.Char[]))
  (define-method-port
    get-full-path
    System.IO.Path
    GetFullPath
    (static: System.String System.String))
  (define-method-port
    get-file-name
    System.IO.Path
    GetFileName
    (static: System.String System.String))
  (define-method-port
    get-invalid-path-chars
    System.IO.Path
    GetInvalidPathChars
    (static: System.Char[]))
  (define-method-port
    get-file-name-without-extension
    System.IO.Path
    GetFileNameWithoutExtension
    (static: System.String System.String))
  (define-method-port
    get-path-root
    System.IO.Path
    GetPathRoot
    (static: System.String System.String))
  (define-method-port
    get-extension
    System.IO.Path
    GetExtension
    (static: System.String System.String))
  (define-method-port
    is-path-rooted?
    System.IO.Path
    IsPathRooted
    (static: System.Boolean System.String))
  (define-method-port
    get-random-file-name
    System.IO.Path
    GetRandomFileName
    (static: System.String))
  (define-method-port
    get-temp-path
    System.IO.Path
    GetTempPath
    (static: System.String))
  (define-method-port
    has-extension?
    System.IO.Path
    HasExtension
    (static: System.Boolean System.String))
  (define-method-port
    get-temp-file-name
    System.IO.Path
    GetTempFileName
    (static: System.String))
  (define-field-port
    invalid-path-chars
    #f
    #f
    (static:)
    System.IO.Path
    InvalidPathChars
    System.Char[])
  (define-field-port
    alt-directory-separator-char
    #f
    #f
    (static:)
    System.IO.Path
    AltDirectorySeparatorChar
    System.Char)
  (define-field-port
    directory-separator-char
    #f
    #f
    (static:)
    System.IO.Path
    DirectorySeparatorChar
    System.Char)
  (define-field-port
    path-separator
    #f
    #f
    (static:)
    System.IO.Path
    PathSeparator
    System.Char)
  (define-field-port
    volume-separator-char
    #f
    #f
    (static:)
    System.IO.Path
    VolumeSeparatorChar
    System.Char))
