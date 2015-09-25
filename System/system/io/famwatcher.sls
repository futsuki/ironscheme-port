(library (system io famwatcher)
  (export is?
          famwatcher?
          start-dispatching
          get-instance?
          stop-dispatching)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.IO.FAMWatcher a))
  (define (famwatcher? a) (clr-is System.IO.FAMWatcher a))
  (define-method-port
    start-dispatching
    System.IO.FAMWatcher
    StartDispatching
    (System.Void System.IO.FileSystemWatcher))
  (define-method-port
    get-instance?
    System.IO.FAMWatcher
    GetInstance
    (static: System.Boolean System.IO.IFileWatcher& System.Boolean))
  (define-method-port
    stop-dispatching
    System.IO.FAMWatcher
    StopDispatching
    (System.Void System.IO.FileSystemWatcher)))
