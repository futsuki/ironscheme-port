(library (system text regular-expressions match)
  (export is? match? result next-match synchronized empty groups)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Text.RegularExpressions.Match a))
  (define (match? a) (clr-is System.Text.RegularExpressions.Match a))
  (define-method-port
    result
    System.Text.RegularExpressions.Match
    Result
    (System.String System.String))
  (define-method-port
    next-match
    System.Text.RegularExpressions.Match
    NextMatch
    (System.Text.RegularExpressions.Match))
  (define-method-port
    synchronized
    System.Text.RegularExpressions.Match
    Synchronized
    (static:
      System.Text.RegularExpressions.Match
      System.Text.RegularExpressions.Match))
  (define-field-port
    empty
    #f
    #f
    (static: property:)
    System.Text.RegularExpressions.Match
    Empty
    System.Text.RegularExpressions.Match)
  (define-field-port
    groups
    #f
    #f
    (property:)
    System.Text.RegularExpressions.Match
    Groups
    System.Text.RegularExpressions.GroupCollection))
