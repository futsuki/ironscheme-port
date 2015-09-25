(library (system threading synchronization-lock-exception)
  (export new is? synchronization-lock-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Threading.SynchronizationLockException
             a
             ...)))))
  (define (is? a)
    (clr-is System.Threading.SynchronizationLockException a))
  (define (synchronization-lock-exception? a)
    (clr-is System.Threading.SynchronizationLockException a)))
