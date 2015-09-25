(library (system diagnostics stopwatch)
  (export new
          is?
          stopwatch?
          get-timestamp
          start-new
          stop
          start
          reset
          frequency
          is-high-resolution?
          elapsed
          elapsed-milliseconds
          elapsed-ticks
          is-running?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Diagnostics.Stopwatch a ...)))))
  (define (is? a) (clr-is System.Diagnostics.Stopwatch a))
  (define (stopwatch? a) (clr-is System.Diagnostics.Stopwatch a))
  (define-method-port
    get-timestamp
    System.Diagnostics.Stopwatch
    GetTimestamp
    (static: System.Int64))
  (define-method-port
    start-new
    System.Diagnostics.Stopwatch
    StartNew
    (static: System.Diagnostics.Stopwatch))
  (define-method-port
    stop
    System.Diagnostics.Stopwatch
    Stop
    (System.Void))
  (define-method-port
    start
    System.Diagnostics.Stopwatch
    Start
    (System.Void))
  (define-method-port
    reset
    System.Diagnostics.Stopwatch
    Reset
    (System.Void))
  (define-field-port
    frequency
    #f
    #f
    (static:)
    System.Diagnostics.Stopwatch
    Frequency
    System.Int64)
  (define-field-port
    is-high-resolution?
    #f
    #f
    (static:)
    System.Diagnostics.Stopwatch
    IsHighResolution
    System.Boolean)
  (define-field-port
    elapsed
    #f
    #f
    (property:)
    System.Diagnostics.Stopwatch
    Elapsed
    System.TimeSpan)
  (define-field-port
    elapsed-milliseconds
    #f
    #f
    (property:)
    System.Diagnostics.Stopwatch
    ElapsedMilliseconds
    System.Int64)
  (define-field-port
    elapsed-ticks
    #f
    #f
    (property:)
    System.Diagnostics.Stopwatch
    ElapsedTicks
    System.Int64)
  (define-field-port
    is-running?
    #f
    #f
    (property:)
    System.Diagnostics.Stopwatch
    IsRunning
    System.Boolean))
