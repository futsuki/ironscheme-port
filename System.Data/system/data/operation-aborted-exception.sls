(library (system data operation-aborted-exception)
  (export is? operation-aborted-exception?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.OperationAbortedException a))
  (define (operation-aborted-exception? a)
    (clr-is System.Data.OperationAbortedException a)))
