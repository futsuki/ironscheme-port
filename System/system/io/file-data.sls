(library (system io file-data)
  (export new
          is?
          file-data?
          directory-get
          directory-set!
          directory-update!
          attributes-get
          attributes-set!
          attributes-update!
          not-exists?-get
          not-exists?-set!
          not-exists?-update!
          creation-time-get
          creation-time-set!
          creation-time-update!
          last-write-time-get
          last-write-time-set!
          last-write-time-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.IO.FileData a ...)))))
  (define (is? a) (clr-is System.IO.FileData a))
  (define (file-data? a) (clr-is System.IO.FileData a))
  (define-field-port
    directory-get
    directory-set!
    directory-update!
    ()
    System.IO.FileData
    Directory
    System.String)
  (define-field-port
    attributes-get
    attributes-set!
    attributes-update!
    ()
    System.IO.FileData
    Attributes
    System.IO.FileAttributes)
  (define-field-port
    not-exists?-get
    not-exists?-set!
    not-exists?-update!
    ()
    System.IO.FileData
    NotExists
    System.Boolean)
  (define-field-port
    creation-time-get
    creation-time-set!
    creation-time-update!
    ()
    System.IO.FileData
    CreationTime
    System.DateTime)
  (define-field-port
    last-write-time-get
    last-write-time-set!
    last-write-time-update!
    ()
    System.IO.FileData
    LastWriteTime
    System.DateTime))
