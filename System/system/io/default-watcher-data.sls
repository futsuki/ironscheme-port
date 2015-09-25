(library (system io default-watcher-data)
  (export new
          is?
          default-watcher-data?
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
          no-wildcards?-get
          no-wildcards?-set!
          no-wildcards?-update!
          disabled-time-get
          disabled-time-set!
          disabled-time-update!
          files-get
          files-set!
          files-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.IO.DefaultWatcherData a ...)))))
  (define (is? a) (clr-is System.IO.DefaultWatcherData a))
  (define (default-watcher-data? a)
    (clr-is System.IO.DefaultWatcherData a))
  (define-field-port
    fsw-get
    fsw-set!
    fsw-update!
    ()
    System.IO.DefaultWatcherData
    FSW
    System.IO.FileSystemWatcher)
  (define-field-port
    directory-get
    directory-set!
    directory-update!
    ()
    System.IO.DefaultWatcherData
    Directory
    System.String)
  (define-field-port
    file-mask-get
    file-mask-set!
    file-mask-update!
    ()
    System.IO.DefaultWatcherData
    FileMask
    System.String)
  (define-field-port
    include-subdirs?-get
    include-subdirs?-set!
    include-subdirs?-update!
    ()
    System.IO.DefaultWatcherData
    IncludeSubdirs
    System.Boolean)
  (define-field-port
    enabled?-get
    enabled?-set!
    enabled?-update!
    ()
    System.IO.DefaultWatcherData
    Enabled
    System.Boolean)
  (define-field-port
    no-wildcards?-get
    no-wildcards?-set!
    no-wildcards?-update!
    ()
    System.IO.DefaultWatcherData
    NoWildcards
    System.Boolean)
  (define-field-port
    disabled-time-get
    disabled-time-set!
    disabled-time-update!
    ()
    System.IO.DefaultWatcherData
    DisabledTime
    System.DateTime)
  (define-field-port
    files-get
    files-set!
    files-update!
    ()
    System.IO.DefaultWatcherData
    Files
    System.Collections.Hashtable))
