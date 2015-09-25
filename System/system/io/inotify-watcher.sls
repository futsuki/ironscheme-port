(library (system io inotify-watcher)
  (export is?
          inotify-watcher?
          start-dispatching
          get-instance?
          stop-dispatching)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.IO.InotifyWatcher a))
  (define (inotify-watcher? a) (clr-is System.IO.InotifyWatcher a))
  (define-method-port
    start-dispatching
    System.IO.InotifyWatcher
    StartDispatching
    (System.Void System.IO.FileSystemWatcher))
  (define-method-port
    get-instance?
    System.IO.InotifyWatcher
    GetInstance
    (static: System.Boolean System.IO.IFileWatcher& System.Boolean))
  (define-method-port
    stop-dispatching
    System.IO.InotifyWatcher
    StopDispatching
    (System.Void System.IO.FileSystemWatcher)))
