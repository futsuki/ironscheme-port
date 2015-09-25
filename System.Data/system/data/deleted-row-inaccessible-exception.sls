(library (system data deleted-row-inaccessible-exception)
  (export new is? deleted-row-inaccessible-exception?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Data.DeletedRowInaccessibleException
             a
             ...)))))
  (define (is? a)
    (clr-is System.Data.DeletedRowInaccessibleException a))
  (define (deleted-row-inaccessible-exception? a)
    (clr-is System.Data.DeletedRowInaccessibleException a)))
