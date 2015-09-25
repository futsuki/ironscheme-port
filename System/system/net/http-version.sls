(library (system net http-version)
  (export new is? http-version? version10 version11)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.HttpVersion a ...)))))
  (define (is? a) (clr-is System.Net.HttpVersion a))
  (define (http-version? a) (clr-is System.Net.HttpVersion a))
  (define-field-port
    version10
    #f
    #f
    (static:)
    System.Net.HttpVersion
    Version10
    System.Version)
  (define-field-port
    version11
    #f
    #f
    (static:)
    System.Net.HttpVersion
    Version11
    System.Version))
