(library (system text regular-expressions replacement-evaluator)
  (export new
          is?
          replacement-evaluator?
          evaluate-append
          evaluate
          needs-groups-or-captures?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Text.RegularExpressions.ReplacementEvaluator
             a
             ...)))))
  (define (is? a)
    (clr-is System.Text.RegularExpressions.ReplacementEvaluator a))
  (define (replacement-evaluator? a)
    (clr-is System.Text.RegularExpressions.ReplacementEvaluator a))
  (define-method-port
    evaluate-append
    System.Text.RegularExpressions.ReplacementEvaluator
    EvaluateAppend
    (System.Void
      System.Text.RegularExpressions.Match
      System.Text.StringBuilder))
  (define-method-port
    evaluate
    System.Text.RegularExpressions.ReplacementEvaluator
    Evaluate
    (System.String System.Text.RegularExpressions.Match)
    (static:
      System.String
      System.String
      System.Text.RegularExpressions.Match))
  (define-field-port
    needs-groups-or-captures?
    #f
    #f
    (property:)
    System.Text.RegularExpressions.ReplacementEvaluator
    NeedsGroupsOrCaptures
    System.Boolean))
