(library (system io inotify-data)
  (export new
          is?
          inotify-data?
          fsw-get
          fsw-set!
          fsw-update!
          directory-get
          directory-set!
          directory-update!
          watch-get
          watch-set!
          watch-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.IO.InotifyData a ...)))))
  (define (is? a) (clr-is System.IO.InotifyData a))
  (define (inotify-data? a) (clr-is System.IO.InotifyData a))
  (define-field-port
    fsw-get
    fsw-set!
    fsw-update!
    ()
    System.IO.InotifyData
    FSW
    System.IO.FileSystemWatcher)
  (define-field-port
    directory-get
    directory-set!
    directory-update!
    ()
    System.IO.InotifyData
    Directory
    System.String)
  (define-field-port
    watch-get
    watch-set!
    watch-update!
    ()
    System.IO.InotifyData
    Watch
    System.Int32))
