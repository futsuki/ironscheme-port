(library (system char-enumerator)
  (export is? char-enumerator? reset clone move-next? current)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.CharEnumerator a))
  (define (char-enumerator? a) (clr-is System.CharEnumerator a))
  (define-method-port reset System.CharEnumerator Reset (System.Void))
  (define-method-port clone System.CharEnumerator Clone (System.Object))
  (define-method-port
    move-next?
    System.CharEnumerator
    MoveNext
    (System.Boolean))
  (define-field-port
    current
    #f
    #f
    (property:)
    System.CharEnumerator
    Current
    System.Char))
