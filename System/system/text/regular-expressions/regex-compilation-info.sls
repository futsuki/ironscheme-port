(library (system text regular-expressions regex-compilation-info)
  (export new
          is?
          regex-compilation-info?
          is-public?-get
          is-public?-set!
          is-public?-update!
          name-get
          name-set!
          name-update!
          namespace-get
          namespace-set!
          namespace-update!
          options-get
          options-set!
          options-update!
          pattern-get
          pattern-set!
          pattern-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Text.RegularExpressions.RegexCompilationInfo
             a
             ...)))))
  (define (is? a)
    (clr-is System.Text.RegularExpressions.RegexCompilationInfo a))
  (define (regex-compilation-info? a)
    (clr-is System.Text.RegularExpressions.RegexCompilationInfo a))
  (define-field-port
    is-public?-get
    is-public?-set!
    is-public?-update!
    (property:)
    System.Text.RegularExpressions.RegexCompilationInfo
    IsPublic
    System.Boolean)
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    System.Text.RegularExpressions.RegexCompilationInfo
    Name
    System.String)
  (define-field-port
    namespace-get
    namespace-set!
    namespace-update!
    (property:)
    System.Text.RegularExpressions.RegexCompilationInfo
    Namespace
    System.String)
  (define-field-port
    options-get
    options-set!
    options-update!
    (property:)
    System.Text.RegularExpressions.RegexCompilationInfo
    Options
    System.Text.RegularExpressions.RegexOptions)
  (define-field-port
    pattern-get
    pattern-set!
    pattern-update!
    (property:)
    System.Text.RegularExpressions.RegexCompilationInfo
    Pattern
    System.String))
