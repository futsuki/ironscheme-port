(library (system net web-permission-info)
  (export new is? web-permission-info? info)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.WebPermissionInfo a ...)))))
  (define (is? a) (clr-is System.Net.WebPermissionInfo a))
  (define (web-permission-info? a)
    (clr-is System.Net.WebPermissionInfo a))
  (define-field-port
    info
    #f
    #f
    (property:)
    System.Net.WebPermissionInfo
    Info
    System.String))
