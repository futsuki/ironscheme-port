(library (system net mime disposition-type-names)
  (export is? disposition-type-names? attachment inline)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Net.Mime.DispositionTypeNames a))
  (define (disposition-type-names? a)
    (clr-is System.Net.Mime.DispositionTypeNames a))
  (define-field-port
    attachment
    #f
    #f
    (static:)
    System.Net.Mime.DispositionTypeNames
    Attachment
    System.String)
  (define-field-port
    inline
    #f
    #f
    (static:)
    System.Net.Mime.DispositionTypeNames
    Inline
    System.String))
