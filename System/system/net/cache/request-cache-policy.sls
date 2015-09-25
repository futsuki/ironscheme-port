(library (system net cache request-cache-policy)
  (export new is? request-cache-policy? to-string level)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Net.Cache.RequestCachePolicy a ...)))))
  (define (is? a) (clr-is System.Net.Cache.RequestCachePolicy a))
  (define (request-cache-policy? a)
    (clr-is System.Net.Cache.RequestCachePolicy a))
  (define-method-port
    to-string
    System.Net.Cache.RequestCachePolicy
    ToString
    (System.String))
  (define-field-port
    level
    #f
    #f
    (property:)
    System.Net.Cache.RequestCachePolicy
    Level
    System.Net.Cache.RequestCacheLevel))
