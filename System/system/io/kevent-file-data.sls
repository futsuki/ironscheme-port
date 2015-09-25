(library (system io kevent-file-data)
  (export new
          is?
          kevent-file-data?
          fsi-get
          fsi-set!
          fsi-update!
          last-access-time-get
          last-access-time-set!
          last-access-time-update!
          last-write-time-get
          last-write-time-set!
          last-write-time-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.IO.KeventFileData a ...)))))
  (define (is? a) (clr-is System.IO.KeventFileData a))
  (define (kevent-file-data? a) (clr-is System.IO.KeventFileData a))
  (define-field-port
    fsi-get
    fsi-set!
    fsi-update!
    ()
    System.IO.KeventFileData
    fsi
    System.IO.FileSystemInfo)
  (define-field-port
    last-access-time-get
    last-access-time-set!
    last-access-time-update!
    ()
    System.IO.KeventFileData
    LastAccessTime
    System.DateTime)
  (define-field-port
    last-write-time-get
    last-write-time-set!
    last-write-time-update!
    ()
    System.IO.KeventFileData
    LastWriteTime
    System.DateTime))
