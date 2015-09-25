(library (system io windows-watcher)
  (export is?
          windows-watcher?
          start-dispatching
          get-instance?
          stop-dispatching)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.IO.WindowsWatcher a))
  (define (windows-watcher? a) (clr-is System.IO.WindowsWatcher a))
  (define-method-port
    start-dispatching
    System.IO.WindowsWatcher
    StartDispatching
    (System.Void System.IO.FileSystemWatcher))
  (define-method-port
    get-instance?
    System.IO.WindowsWatcher
    GetInstance
    (static: System.Boolean System.IO.IFileWatcher&))
  (define-method-port
    stop-dispatching
    System.IO.WindowsWatcher
    StopDispatching
    (System.Void System.IO.FileSystemWatcher)))
