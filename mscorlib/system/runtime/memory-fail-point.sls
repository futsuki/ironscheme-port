(library (system runtime memory-fail-point)
  (export new is? memory-fail-point? dispose)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Runtime.MemoryFailPoint a ...)))))
  (define (is? a) (clr-is System.Runtime.MemoryFailPoint a))
  (define (memory-fail-point? a)
    (clr-is System.Runtime.MemoryFailPoint a))
  (define-method-port
    dispose
    System.Runtime.MemoryFailPoint
    Dispose
    (System.Void)))
