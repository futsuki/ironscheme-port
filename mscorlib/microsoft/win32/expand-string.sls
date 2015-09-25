(library (microsoft win32 expand-string)
  (export new is? expand-string? expand to-string)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Microsoft.Win32.ExpandString a ...)))))
  (define (is? a) (clr-is Microsoft.Win32.ExpandString a))
  (define (expand-string? a) (clr-is Microsoft.Win32.ExpandString a))
  (define-method-port
    expand
    Microsoft.Win32.ExpandString
    Expand
    (System.String))
  (define-method-port
    to-string
    Microsoft.Win32.ExpandString
    ToString
    (System.String)))
