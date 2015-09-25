(library (system io default-watcher)
  (export is?
          default-watcher?
          start-dispatching
          get-instance?
          stop-dispatching)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.IO.DefaultWatcher a))
  (define (default-watcher? a) (clr-is System.IO.DefaultWatcher a))
  (define-method-port
    start-dispatching
    System.IO.DefaultWatcher
    StartDispatching
    (System.Void System.IO.FileSystemWatcher))
  (define-method-port
    get-instance?
    System.IO.DefaultWatcher
    GetInstance
    (static: System.Boolean System.IO.IFileWatcher&))
  (define-method-port
    stop-dispatching
    System.IO.DefaultWatcher
    StopDispatching
    (System.Void System.IO.FileSystemWatcher)))
