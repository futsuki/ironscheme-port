(library (system resources win32-group-icon-resource)
  (export new is? win32-group-icon-resource? write-to)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Resources.Win32GroupIconResource a ...)))))
  (define (is? a) (clr-is System.Resources.Win32GroupIconResource a))
  (define (win32-group-icon-resource? a)
    (clr-is System.Resources.Win32GroupIconResource a))
  (define-method-port
    write-to
    System.Resources.Win32GroupIconResource
    WriteTo
    (System.Void System.IO.Stream)))
