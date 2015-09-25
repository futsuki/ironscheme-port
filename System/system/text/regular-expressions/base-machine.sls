(library (system text regular-expressions base-machine)
  (export is? base-machine? result replace split scan)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Text.RegularExpressions.BaseMachine a))
  (define (base-machine? a)
    (clr-is System.Text.RegularExpressions.BaseMachine a))
  (define-method-port
    result
    System.Text.RegularExpressions.BaseMachine
    Result
    (System.String System.String System.Text.RegularExpressions.Match))
  (define-method-port
    replace
    System.Text.RegularExpressions.BaseMachine
    Replace
    (System.String
      System.Text.RegularExpressions.Regex
      System.String
      System.String
      System.Int32
      System.Int32))
  (define-method-port
    split
    System.Text.RegularExpressions.BaseMachine
    Split
    (System.String[]
      System.Text.RegularExpressions.Regex
      System.String
      System.Int32
      System.Int32))
  (define-method-port
    scan
    System.Text.RegularExpressions.BaseMachine
    Scan
    (System.Text.RegularExpressions.Match
      System.Text.RegularExpressions.Regex
      System.String
      System.Int32
      System.Int32)))
