(library (system runtime serialization delayed-fixup-record)
  (export new
          is?
          delayed-fixup-record?
          -member-name-get
          -member-name-set!
          -member-name-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Serialization.DelayedFixupRecord
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Serialization.DelayedFixupRecord a))
  (define (delayed-fixup-record? a)
    (clr-is System.Runtime.Serialization.DelayedFixupRecord a))
  (define-field-port
    -member-name-get
    -member-name-set!
    -member-name-update!
    ()
    System.Runtime.Serialization.DelayedFixupRecord
    _memberName
    System.String))
