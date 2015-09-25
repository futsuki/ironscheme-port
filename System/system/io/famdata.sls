(library (system io famdata)
  (export new
          is?
          famdata?
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
          request-get
          request-set!
          request-update!
          sub-dirs-get
          sub-dirs-set!
          sub-dirs-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.IO.FAMData a ...)))))
  (define (is? a) (clr-is System.IO.FAMData a))
  (define (famdata? a) (clr-is System.IO.FAMData a))
  (define-field-port
    fsw-get
    fsw-set!
    fsw-update!
    ()
    System.IO.FAMData
    FSW
    System.IO.FileSystemWatcher)
  (define-field-port
    directory-get
    directory-set!
    directory-update!
    ()
    System.IO.FAMData
    Directory
    System.String)
  (define-field-port
    file-mask-get
    file-mask-set!
    file-mask-update!
    ()
    System.IO.FAMData
    FileMask
    System.String)
  (define-field-port
    include-subdirs?-get
    include-subdirs?-set!
    include-subdirs?-update!
    ()
    System.IO.FAMData
    IncludeSubdirs
    System.Boolean)
  (define-field-port
    enabled?-get
    enabled?-set!
    enabled?-update!
    ()
    System.IO.FAMData
    Enabled
    System.Boolean)
  (define-field-port
    request-get
    request-set!
    request-update!
    ()
    System.IO.FAMData
    Request
    System.IO.FAMRequest)
  (define-field-port
    sub-dirs-get
    sub-dirs-set!
    sub-dirs-update!
    ()
    System.IO.FAMData
    SubDirs
    System.Collections.Hashtable))
