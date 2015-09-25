(library (system collections specialized string-enumerator)
  (export is? string-enumerator? reset move-next? current)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Collections.Specialized.StringEnumerator a))
  (define (string-enumerator? a)
    (clr-is System.Collections.Specialized.StringEnumerator a))
  (define-method-port
    reset
    System.Collections.Specialized.StringEnumerator
    Reset
    (System.Void))
  (define-method-port
    move-next?
    System.Collections.Specialized.StringEnumerator
    MoveNext
    (System.Boolean))
  (define-field-port
    current
    #f
    #f
    (property:)
    System.Collections.Specialized.StringEnumerator
    Current
    System.String))
