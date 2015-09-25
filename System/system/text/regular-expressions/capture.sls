(library (system text regular-expressions capture)
  (export is? capture? to-string index length value)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Text.RegularExpressions.Capture a))
  (define (capture? a)
    (clr-is System.Text.RegularExpressions.Capture a))
  (define-method-port
    to-string
    System.Text.RegularExpressions.Capture
    ToString
    (System.String))
  (define-field-port
    index
    #f
    #f
    (property:)
    System.Text.RegularExpressions.Capture
    Index
    System.Int32)
  (define-field-port
    length
    #f
    #f
    (property:)
    System.Text.RegularExpressions.Capture
    Length
    System.Int32)
  (define-field-port
    value
    #f
    #f
    (property:)
    System.Text.RegularExpressions.Capture
    Value
    System.String))
