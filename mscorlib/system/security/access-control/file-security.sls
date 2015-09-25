(library (system security access-control file-security)
  (export new is? file-security?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.AccessControl.FileSecurity
             a
             ...)))))
  (define (is? a) (clr-is System.Security.AccessControl.FileSecurity a))
  (define (file-security? a)
    (clr-is System.Security.AccessControl.FileSecurity a)))
