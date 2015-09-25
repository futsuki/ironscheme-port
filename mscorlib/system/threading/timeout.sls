(library (system threading timeout)
  (export is? timeout? infinite)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Threading.Timeout a))
  (define (timeout? a) (clr-is System.Threading.Timeout a))
  (define-field-port
    infinite
    #f
    #f
    (static:)
    System.Threading.Timeout
    Infinite
    System.Int32))
