(library (system threading thread-abort-exception)
  (export is? thread-abort-exception? exception-state)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Threading.ThreadAbortException a))
  (define (thread-abort-exception? a)
    (clr-is System.Threading.ThreadAbortException a))
  (define-field-port
    exception-state
    #f
    #f
    (property:)
    System.Threading.ThreadAbortException
    ExceptionState
    System.Object))
