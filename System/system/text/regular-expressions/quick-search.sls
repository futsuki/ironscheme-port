(library (system text regular-expressions quick-search)
  (export new is? quick-search? search string length ignore-case?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Text.RegularExpressions.QuickSearch
             a
             ...)))))
  (define (is? a) (clr-is System.Text.RegularExpressions.QuickSearch a))
  (define (quick-search? a)
    (clr-is System.Text.RegularExpressions.QuickSearch a))
  (define-method-port
    search
    System.Text.RegularExpressions.QuickSearch
    Search
    (System.Int32 System.String System.Int32 System.Int32))
  (define-field-port
    string
    #f
    #f
    (property:)
    System.Text.RegularExpressions.QuickSearch
    String
    System.String)
  (define-field-port
    length
    #f
    #f
    (property:)
    System.Text.RegularExpressions.QuickSearch
    Length
    System.Int32)
  (define-field-port
    ignore-case?
    #f
    #f
    (property:)
    System.Text.RegularExpressions.QuickSearch
    IgnoreCase
    System.Boolean))
