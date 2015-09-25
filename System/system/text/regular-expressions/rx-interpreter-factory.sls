(library (system text regular-expressions rx-interpreter-factory)
  (export new
          is?
          rx-interpreter-factory?
          new-instance
          group-count
          gap-get
          gap-set!
          gap-update!
          mapping-get
          mapping-set!
          mapping-update!
          names-mapping-get
          names-mapping-set!
          names-mapping-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Text.RegularExpressions.RxInterpreterFactory
             a
             ...)))))
  (define (is? a)
    (clr-is System.Text.RegularExpressions.RxInterpreterFactory a))
  (define (rx-interpreter-factory? a)
    (clr-is System.Text.RegularExpressions.RxInterpreterFactory a))
  (define-method-port
    new-instance
    System.Text.RegularExpressions.RxInterpreterFactory
    NewInstance
    (System.Text.RegularExpressions.IMachine))
  (define-field-port
    group-count
    #f
    #f
    (property:)
    System.Text.RegularExpressions.RxInterpreterFactory
    GroupCount
    System.Int32)
  (define-field-port
    gap-get
    gap-set!
    gap-update!
    (property:)
    System.Text.RegularExpressions.RxInterpreterFactory
    Gap
    System.Int32)
  (define-field-port
    mapping-get
    mapping-set!
    mapping-update!
    (property:)
    System.Text.RegularExpressions.RxInterpreterFactory
    Mapping
    System.Collections.IDictionary)
  (define-field-port
    names-mapping-get
    names-mapping-set!
    names-mapping-update!
    (property:)
    System.Text.RegularExpressions.RxInterpreterFactory
    NamesMapping
    System.String[]))
