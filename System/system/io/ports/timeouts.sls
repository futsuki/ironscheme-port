(library (system io ports timeouts)
  (export new
          is?
          timeouts?
          set-values
          max-dword
          read-interval-timeout-get
          read-interval-timeout-set!
          read-interval-timeout-update!
          read-total-timeout-multiplier-get
          read-total-timeout-multiplier-set!
          read-total-timeout-multiplier-update!
          read-total-timeout-constant-get
          read-total-timeout-constant-set!
          read-total-timeout-constant-update!
          write-total-timeout-multiplier-get
          write-total-timeout-multiplier-set!
          write-total-timeout-multiplier-update!
          write-total-timeout-constant-get
          write-total-timeout-constant-set!
          write-total-timeout-constant-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.IO.Ports.Timeouts a ...)))))
  (define (is? a) (clr-is System.IO.Ports.Timeouts a))
  (define (timeouts? a) (clr-is System.IO.Ports.Timeouts a))
  (define-method-port
    set-values
    System.IO.Ports.Timeouts
    SetValues
    (System.Void System.Int32 System.Int32))
  (define-field-port
    max-dword
    #f
    #f
    (static:)
    System.IO.Ports.Timeouts
    MaxDWord
    System.UInt32)
  (define-field-port
    read-interval-timeout-get
    read-interval-timeout-set!
    read-interval-timeout-update!
    ()
    System.IO.Ports.Timeouts
    ReadIntervalTimeout
    System.UInt32)
  (define-field-port
    read-total-timeout-multiplier-get
    read-total-timeout-multiplier-set!
    read-total-timeout-multiplier-update!
    ()
    System.IO.Ports.Timeouts
    ReadTotalTimeoutMultiplier
    System.UInt32)
  (define-field-port
    read-total-timeout-constant-get
    read-total-timeout-constant-set!
    read-total-timeout-constant-update!
    ()
    System.IO.Ports.Timeouts
    ReadTotalTimeoutConstant
    System.UInt32)
  (define-field-port
    write-total-timeout-multiplier-get
    write-total-timeout-multiplier-set!
    write-total-timeout-multiplier-update!
    ()
    System.IO.Ports.Timeouts
    WriteTotalTimeoutMultiplier
    System.UInt32)
  (define-field-port
    write-total-timeout-constant-get
    write-total-timeout-constant-set!
    write-total-timeout-constant-update!
    ()
    System.IO.Ports.Timeouts
    WriteTotalTimeoutConstant
    System.UInt32))
