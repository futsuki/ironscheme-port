(library (system reflection missing)
  (export is? missing? value)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Reflection.Missing a))
  (define (missing? a) (clr-is System.Reflection.Missing a))
  (define-field-port
    value
    #f
    #f
    (static:)
    System.Reflection.Missing
    Value
    System.Reflection.Missing))
