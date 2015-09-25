(library (system text regular-expressions factory-cache)
  (export new
          is?
          factory-cache?
          add
          lookup
          capacity-get
          capacity-set!
          capacity-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Text.RegularExpressions.FactoryCache
             a
             ...)))))
  (define (is? a)
    (clr-is System.Text.RegularExpressions.FactoryCache a))
  (define (factory-cache? a)
    (clr-is System.Text.RegularExpressions.FactoryCache a))
  (define-method-port
    add
    System.Text.RegularExpressions.FactoryCache
    Add
    (System.Void
      System.String
      System.Text.RegularExpressions.RegexOptions
      System.Text.RegularExpressions.IMachineFactory))
  (define-method-port
    lookup
    System.Text.RegularExpressions.FactoryCache
    Lookup
    (System.Text.RegularExpressions.IMachineFactory
      System.String
      System.Text.RegularExpressions.RegexOptions))
  (define-field-port
    capacity-get
    capacity-set!
    capacity-update!
    (property:)
    System.Text.RegularExpressions.FactoryCache
    Capacity
    System.Int32))
