(library (system runtime serialization base-fixup-record)
  (export new
          is?
          base-fixup-record?
          do-fixup?
          next-same-container-get
          next-same-container-set!
          next-same-container-update!
          next-same-required-get
          next-same-required-set!
          next-same-required-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Serialization.BaseFixupRecord
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Serialization.BaseFixupRecord a))
  (define (base-fixup-record? a)
    (clr-is System.Runtime.Serialization.BaseFixupRecord a))
  (define-method-port
    do-fixup?
    System.Runtime.Serialization.BaseFixupRecord
    DoFixup
    (System.Boolean
      System.Runtime.Serialization.ObjectManager
      System.Boolean))
  (define-field-port
    next-same-container-get
    next-same-container-set!
    next-same-container-update!
    ()
    System.Runtime.Serialization.BaseFixupRecord
    NextSameContainer
    System.Runtime.Serialization.BaseFixupRecord)
  (define-field-port
    next-same-required-get
    next-same-required-set!
    next-same-required-update!
    ()
    System.Runtime.Serialization.BaseFixupRecord
    NextSameRequired
    System.Runtime.Serialization.BaseFixupRecord))
