(library (system security access-control directory-security)
  (export new is? directory-security?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.AccessControl.DirectorySecurity
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.AccessControl.DirectorySecurity a))
  (define (directory-security? a)
    (clr-is System.Security.AccessControl.DirectorySecurity a)))
