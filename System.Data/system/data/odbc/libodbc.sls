(library (system data odbc libodbc)
  (export new is? libodbc?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Data.Odbc.libodbc a ...)))))
  (define (is? a) (clr-is System.Data.Odbc.libodbc a))
  (define (libodbc? a) (clr-is System.Data.Odbc.libodbc a)))
