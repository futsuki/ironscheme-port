(library (system io kevent-data)
  (export new
          is?
          kevent-data?
          fsw-get
          fsw-set!
          fsw-update!
          directory-get
          directory-set!
          directory-update!
          file-mask-get
          file-mask-set!
          file-mask-update!
          include-subdirs?-get
          include-subdirs?-set!
          include-subdirs?-update!
          enabled?-get
          enabled?-set!
          enabled?-update!
          dir-entries-get
          dir-entries-set!
          dir-entries-update!
          ev-get
          ev-set!
          ev-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.IO.KeventData a ...)))))
  (define (is? a) (clr-is System.IO.KeventData a))
  (define (kevent-data? a) (clr-is System.IO.KeventData a))
  (define-field-port
    fsw-get
    fsw-set!
    fsw-update!
    ()
    System.IO.KeventData
    FSW
    System.IO.FileSystemWatcher)
  (define-field-port
    directory-get
    directory-set!
    directory-update!
    ()
    System.IO.KeventData
    Directory
    System.String)
  (define-field-port
    file-mask-get
    file-mask-set!
    file-mask-update!
    ()
    System.IO.KeventData
    FileMask
    System.String)
  (define-field-port
    include-subdirs?-get
    include-subdirs?-set!
    include-subdirs?-update!
    ()
    System.IO.KeventData
    IncludeSubdirs
    System.Boolean)
  (define-field-port
    enabled?-get
    enabled?-set!
    enabled?-update!
    ()
    System.IO.KeventData
    Enabled
    System.Boolean)
  (define-field-port
    dir-entries-get
    dir-entries-set!
    dir-entries-update!
    ()
    System.IO.KeventData
    DirEntries
    System.Collections.Hashtable)
  (define-field-port
    ev-get
    ev-set!
    ev-update!
    ()
    System.IO.KeventData
    ev
    System.IO.kevent))
