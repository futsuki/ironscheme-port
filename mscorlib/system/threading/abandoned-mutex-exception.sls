(library (system threading abandoned-mutex-exception)
  (export new is? abandoned-mutex-exception? mutex mutex-index)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Threading.AbandonedMutexException a ...)))))
  (define (is? a) (clr-is System.Threading.AbandonedMutexException a))
  (define (abandoned-mutex-exception? a)
    (clr-is System.Threading.AbandonedMutexException a))
  (define-field-port
    mutex
    #f
    #f
    (property:)
    System.Threading.AbandonedMutexException
    Mutex
    System.Threading.Mutex)
  (define-field-port
    mutex-index
    #f
    #f
    (property:)
    System.Threading.AbandonedMutexException
    MutexIndex
    System.Int32))
