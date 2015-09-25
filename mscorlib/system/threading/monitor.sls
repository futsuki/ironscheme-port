(library (system threading monitor)
  (export is? monitor? pulse enter wait? try-enter? exit pulse-all)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Threading.Monitor a))
  (define (monitor? a) (clr-is System.Threading.Monitor a))
  (define-method-port
    pulse
    System.Threading.Monitor
    Pulse
    (static: System.Void System.Object))
  (define-method-port
    enter
    System.Threading.Monitor
    Enter
    (static: System.Void System.Object))
  (define-method-port
    wait?
    System.Threading.Monitor
    Wait
    (static:
      System.Boolean
      System.Object
      System.TimeSpan
      System.Boolean)
    (static: System.Boolean System.Object System.Int32 System.Boolean)
    (static: System.Boolean System.Object System.TimeSpan)
    (static: System.Boolean System.Object System.Int32)
    (static: System.Boolean System.Object))
  (define-method-port
    try-enter?
    System.Threading.Monitor
    TryEnter
    (static: System.Boolean System.Object System.TimeSpan)
    (static: System.Boolean System.Object System.Int32)
    (static: System.Boolean System.Object))
  (define-method-port
    exit
    System.Threading.Monitor
    Exit
    (static: System.Void System.Object))
  (define-method-port
    pulse-all
    System.Threading.Monitor
    PulseAll
    (static: System.Void System.Object)))
