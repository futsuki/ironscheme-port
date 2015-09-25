(library (system runtime serialization multi-array-fixup-record)
  (export new is? multi-array-fixup-record?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Serialization.MultiArrayFixupRecord
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Serialization.MultiArrayFixupRecord a))
  (define (multi-array-fixup-record? a)
    (clr-is System.Runtime.Serialization.MultiArrayFixupRecord a)))
