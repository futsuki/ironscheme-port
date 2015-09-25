(library (system threading timer)
  (export new is? timer? dispose change?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Threading.Timer a ...)))))
  (define (is? a) (clr-is System.Threading.Timer a))
  (define (timer? a) (clr-is System.Threading.Timer a))
  (define-method-port
    dispose
    System.Threading.Timer
    Dispose
    (System.Boolean System.Threading.WaitHandle)
    (System.Void))
  (define-method-port
    change?
    System.Threading.Timer
    Change
    (System.Boolean System.Int64 System.Int64)
    (System.Boolean System.UInt32 System.UInt32)
    (System.Boolean System.TimeSpan System.TimeSpan)
    (System.Boolean System.Int32 System.Int32)))
