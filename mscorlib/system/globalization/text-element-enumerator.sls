(library (system globalization text-element-enumerator)
  (export is?
          text-element-enumerator?
          get-text-element
          reset
          move-next?
          current
          element-index)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Globalization.TextElementEnumerator a))
  (define (text-element-enumerator? a)
    (clr-is System.Globalization.TextElementEnumerator a))
  (define-method-port
    get-text-element
    System.Globalization.TextElementEnumerator
    GetTextElement
    (System.String))
  (define-method-port
    reset
    System.Globalization.TextElementEnumerator
    Reset
    (System.Void))
  (define-method-port
    move-next?
    System.Globalization.TextElementEnumerator
    MoveNext
    (System.Boolean))
  (define-field-port
    current
    #f
    #f
    (property:)
    System.Globalization.TextElementEnumerator
    Current
    System.Object)
  (define-field-port
    element-index
    #f
    #f
    (property:)
    System.Globalization.TextElementEnumerator
    ElementIndex
    System.Int32))
