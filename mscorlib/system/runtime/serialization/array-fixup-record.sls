(library (system runtime serialization array-fixup-record)
  (export new is? array-fixup-record?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Serialization.ArrayFixupRecord
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Serialization.ArrayFixupRecord a))
  (define (array-fixup-record? a)
    (clr-is System.Runtime.Serialization.ArrayFixupRecord a)))
