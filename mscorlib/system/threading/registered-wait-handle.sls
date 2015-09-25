(library (system threading registered-wait-handle)
  (export is? registered-wait-handle? unregister?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Threading.RegisteredWaitHandle a))
  (define (registered-wait-handle? a)
    (clr-is System.Threading.RegisteredWaitHandle a))
  (define-method-port
    unregister?
    System.Threading.RegisteredWaitHandle
    Unregister
    (System.Boolean System.Threading.WaitHandle)))
