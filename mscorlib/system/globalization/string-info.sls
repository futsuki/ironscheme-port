(library (system globalization string-info)
  (export new
          is?
          string-info?
          get-next-text-element
          get-hash-code
          parse-combining-characters
          substring-by-text-elements
          get-text-element-enumerator
          equals?
          length-in-text-elements
          string-get
          string-set!
          string-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Globalization.StringInfo a ...)))))
  (define (is? a) (clr-is System.Globalization.StringInfo a))
  (define (string-info? a) (clr-is System.Globalization.StringInfo a))
  (define-method-port
    get-next-text-element
    System.Globalization.StringInfo
    GetNextTextElement
    (static: System.String System.String System.Int32)
    (static: System.String System.String))
  (define-method-port
    get-hash-code
    System.Globalization.StringInfo
    GetHashCode
    (System.Int32))
  (define-method-port
    parse-combining-characters
    System.Globalization.StringInfo
    ParseCombiningCharacters
    (static: System.Int32[] System.String))
  (define-method-port
    substring-by-text-elements
    System.Globalization.StringInfo
    SubstringByTextElements
    (System.String System.Int32 System.Int32)
    (System.String System.Int32))
  (define-method-port
    get-text-element-enumerator
    System.Globalization.StringInfo
    GetTextElementEnumerator
    (static:
      System.Globalization.TextElementEnumerator
      System.String
      System.Int32)
    (static: System.Globalization.TextElementEnumerator System.String))
  (define-method-port
    equals?
    System.Globalization.StringInfo
    Equals
    (System.Boolean System.Object))
  (define-field-port
    length-in-text-elements
    #f
    #f
    (property:)
    System.Globalization.StringInfo
    LengthInTextElements
    System.Int32)
  (define-field-port
    string-get
    string-set!
    string-update!
    (property:)
    System.Globalization.StringInfo
    String
    System.String))
