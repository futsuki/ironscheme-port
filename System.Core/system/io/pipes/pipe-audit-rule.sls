(library (system io pipes pipe-audit-rule)
  (export new is? pipe-audit-rule? pipe-access-rights)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.IO.Pipes.PipeAuditRule a ...)))))
  (define (is? a) (clr-is System.IO.Pipes.PipeAuditRule a))
  (define (pipe-audit-rule? a) (clr-is System.IO.Pipes.PipeAuditRule a))
  (define-field-port
    pipe-access-rights
    #f
    #f
    (property:)
    System.IO.Pipes.PipeAuditRule
    PipeAccessRights
    System.IO.Pipes.PipeAccessRights))
