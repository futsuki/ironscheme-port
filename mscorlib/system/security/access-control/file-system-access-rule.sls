(library (system security access-control file-system-access-rule)
  (export new is? file-system-access-rule? file-system-rights)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.AccessControl.FileSystemAccessRule
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.AccessControl.FileSystemAccessRule a))
  (define (file-system-access-rule? a)
    (clr-is System.Security.AccessControl.FileSystemAccessRule a))
  (define-field-port
    file-system-rights
    #f
    #f
    (property:)
    System.Security.AccessControl.FileSystemAccessRule
    FileSystemRights
    System.Security.AccessControl.FileSystemRights))
