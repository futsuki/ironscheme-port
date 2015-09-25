(library (system runtime serialization fixup-record)
  (export new
          is?
          fixup-record?
          -member-get
          -member-set!
          -member-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Runtime.Serialization.FixupRecord a ...)))))
  (define (is? a) (clr-is System.Runtime.Serialization.FixupRecord a))
  (define (fixup-record? a)
    (clr-is System.Runtime.Serialization.FixupRecord a))
  (define-field-port
    -member-get
    -member-set!
    -member-update!
    ()
    System.Runtime.Serialization.FixupRecord
    _member
    System.Reflection.MemberInfo))
