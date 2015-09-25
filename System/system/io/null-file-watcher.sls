(library (system io null-file-watcher)
  (export new
          is?
          null-file-watcher?
          start-dispatching
          get-instance?
          stop-dispatching)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.IO.NullFileWatcher a ...)))))
  (define (is? a) (clr-is System.IO.NullFileWatcher a))
  (define (null-file-watcher? a) (clr-is System.IO.NullFileWatcher a))
  (define-method-port
    start-dispatching
    System.IO.NullFileWatcher
    StartDispatching
    (System.Void System.IO.FileSystemWatcher))
  (define-method-port
    get-instance?
    System.IO.NullFileWatcher
    GetInstance
    (static: System.Boolean System.IO.IFileWatcher&))
  (define-method-port
    stop-dispatching
    System.IO.NullFileWatcher
    StopDispatching
    (System.Void System.IO.FileSystemWatcher)))
