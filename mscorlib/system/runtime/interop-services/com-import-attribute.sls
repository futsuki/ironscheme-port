(library (system runtime interop-services com-import-attribute)
  (export new is? com-import-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.ComImportAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.InteropServices.ComImportAttribute a))
  (define (com-import-attribute? a)
    (clr-is System.Runtime.InteropServices.ComImportAttribute a)))
