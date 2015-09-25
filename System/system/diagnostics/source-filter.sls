(library (system diagnostics source-filter)
  (export new
          is?
          source-filter?
          should-trace?
          source-get
          source-set!
          source-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Diagnostics.SourceFilter a ...)))))
  (define (is? a) (clr-is System.Diagnostics.SourceFilter a))
  (define (source-filter? a) (clr-is System.Diagnostics.SourceFilter a))
  (define-method-port
    should-trace?
    System.Diagnostics.SourceFilter
    ShouldTrace
    (System.Boolean
      System.Diagnostics.TraceEventCache
      System.String
      System.Diagnostics.TraceEventType
      System.Int32
      System.String
      System.Object[]
      System.Object
      System.Object[]))
  (define-field-port
    source-get
    source-set!
    source-update!
    (property:)
    System.Diagnostics.SourceFilter
    Source
    System.String))
