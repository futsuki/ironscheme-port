(library (system io parent-inotify-data)
  (export new
          is?
          parent-inotify-data?
          include-subdirs?-get
          include-subdirs?-set!
          include-subdirs?-update!
          enabled?-get
          enabled?-set!
          enabled?-update!
          children-get
          children-set!
          children-update!
          data-get
          data-set!
          data-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.IO.ParentInotifyData a ...)))))
  (define (is? a) (clr-is System.IO.ParentInotifyData a))
  (define (parent-inotify-data? a)
    (clr-is System.IO.ParentInotifyData a))
  (define-field-port
    include-subdirs?-get
    include-subdirs?-set!
    include-subdirs?-update!
    ()
    System.IO.ParentInotifyData
    IncludeSubdirs
    System.Boolean)
  (define-field-port
    enabled?-get
    enabled?-set!
    enabled?-update!
    ()
    System.IO.ParentInotifyData
    Enabled
    System.Boolean)
  (define-field-port
    children-get
    children-set!
    children-update!
    ()
    System.IO.ParentInotifyData
    children
    System.Collections.ArrayList)
  (define-field-port
    data-get
    data-set!
    data-update!
    ()
    System.IO.ParentInotifyData
    data
    System.IO.InotifyData))
