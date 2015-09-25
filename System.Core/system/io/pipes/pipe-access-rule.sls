(library (system io pipes pipe-access-rule)
  (export new is? pipe-access-rule? pipe-access-rights)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.IO.Pipes.PipeAccessRule a ...)))))
  (define (is? a) (clr-is System.IO.Pipes.PipeAccessRule a))
  (define (pipe-access-rule? a)
    (clr-is System.IO.Pipes.PipeAccessRule a))
  (define-field-port
    pipe-access-rights
    #f
    #f
    (property:)
    System.IO.Pipes.PipeAccessRule
    PipeAccessRights
    System.IO.Pipes.PipeAccessRights))
