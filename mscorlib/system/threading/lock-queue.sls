(library (system threading lock-queue)
  (export new is? lock-queue? pulse wait? pulse-all is-empty?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Threading.LockQueue a ...)))))
  (define (is? a) (clr-is System.Threading.LockQueue a))
  (define (lock-queue? a) (clr-is System.Threading.LockQueue a))
  (define-method-port
    pulse
    System.Threading.LockQueue
    Pulse
    (System.Void))
  (define-method-port
    wait?
    System.Threading.LockQueue
    Wait
    (System.Boolean System.Int32))
  (define-method-port
    pulse-all
    System.Threading.LockQueue
    PulseAll
    (System.Void))
  (define-field-port
    is-empty?
    #f
    #f
    (property:)
    System.Threading.LockQueue
    IsEmpty
    System.Boolean))
