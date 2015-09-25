(library (system diagnostics event-type-filter)
  (export new
          is?
          event-type-filter?
          should-trace?
          event-type-get
          event-type-set!
          event-type-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Diagnostics.EventTypeFilter a ...)))))
  (define (is? a) (clr-is System.Diagnostics.EventTypeFilter a))
  (define (event-type-filter? a)
    (clr-is System.Diagnostics.EventTypeFilter a))
  (define-method-port
    should-trace?
    System.Diagnostics.EventTypeFilter
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
    event-type-get
    event-type-set!
    event-type-update!
    (property:)
    System.Diagnostics.EventTypeFilter
    EventType
    System.Diagnostics.SourceLevels))
