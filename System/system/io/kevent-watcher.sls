(library (system io kevent-watcher)
  (export is?
          kevent-watcher?
          start-dispatching
          get-instance?
          stop-dispatching)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.IO.KeventWatcher a))
  (define (kevent-watcher? a) (clr-is System.IO.KeventWatcher a))
  (define-method-port
    start-dispatching
    System.IO.KeventWatcher
    StartDispatching
    (System.Void System.IO.FileSystemWatcher))
  (define-method-port
    get-instance?
    System.IO.KeventWatcher
    GetInstance
    (static: System.Boolean System.IO.IFileWatcher&))
  (define-method-port
    stop-dispatching
    System.IO.KeventWatcher
    StopDispatching
    (System.Void System.IO.FileSystemWatcher)))
