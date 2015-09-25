(library (system security access-control ace-enumerator)
  (export is? ace-enumerator? reset move-next? current)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Security.AccessControl.AceEnumerator a))
  (define (ace-enumerator? a)
    (clr-is System.Security.AccessControl.AceEnumerator a))
  (define-method-port
    reset
    System.Security.AccessControl.AceEnumerator
    Reset
    (System.Void))
  (define-method-port
    move-next?
    System.Security.AccessControl.AceEnumerator
    MoveNext
    (System.Boolean))
  (define-field-port
    current
    #f
    #f
    (property:)
    System.Security.AccessControl.AceEnumerator
    Current
    System.Security.AccessControl.GenericAce))
