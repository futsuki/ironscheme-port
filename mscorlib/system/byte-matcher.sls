(library (system byte-matcher)
  (export new is? byte-matcher? sort add-mapping starts-with? match)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.ByteMatcher a ...)))))
  (define (is? a) (clr-is System.ByteMatcher a))
  (define (byte-matcher? a) (clr-is System.ByteMatcher a))
  (define-method-port sort System.ByteMatcher Sort (System.Void))
  (define-method-port
    add-mapping
    System.ByteMatcher
    AddMapping
    (System.Void System.TermInfoStrings System.Byte[]))
  (define-method-port
    starts-with?
    System.ByteMatcher
    StartsWith
    (System.Boolean System.Int32))
  (define-method-port
    match
    System.ByteMatcher
    Match
    (System.TermInfoStrings
      System.Char[]
      System.Int32
      System.Int32
      System.Int32&)))
