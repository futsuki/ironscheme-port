(library (system io file-system-event-args)
  (export new is? file-system-event-args? change-type full-path name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.IO.FileSystemEventArgs a ...)))))
  (define (is? a) (clr-is System.IO.FileSystemEventArgs a))
  (define (file-system-event-args? a)
    (clr-is System.IO.FileSystemEventArgs a))
  (define-field-port
    change-type
    #f
    #f
    (property:)
    System.IO.FileSystemEventArgs
    ChangeType
    System.IO.WatcherChangeTypes)
  (define-field-port
    full-path
    #f
    #f
    (property:)
    System.IO.FileSystemEventArgs
    FullPath
    System.String)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.IO.FileSystemEventArgs
    Name
    System.String))
