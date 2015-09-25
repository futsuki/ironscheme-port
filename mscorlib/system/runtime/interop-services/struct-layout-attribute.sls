(library (system runtime interop-services struct-layout-attribute)
  (export new
          is?
          struct-layout-attribute?
          char-set-get
          char-set-set!
          char-set-update!
          pack-get
          pack-set!
          pack-update!
          size-get
          size-set!
          size-update!
          value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.StructLayoutAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.InteropServices.StructLayoutAttribute a))
  (define (struct-layout-attribute? a)
    (clr-is System.Runtime.InteropServices.StructLayoutAttribute a))
  (define-field-port
    char-set-get
    char-set-set!
    char-set-update!
    ()
    System.Runtime.InteropServices.StructLayoutAttribute
    CharSet
    System.Runtime.InteropServices.CharSet)
  (define-field-port
    pack-get
    pack-set!
    pack-update!
    ()
    System.Runtime.InteropServices.StructLayoutAttribute
    Pack
    System.Int32)
  (define-field-port
    size-get
    size-set!
    size-update!
    ()
    System.Runtime.InteropServices.StructLayoutAttribute
    Size
    System.Int32)
  (define-field-port
    value
    #f
    #f
    (property:)
    System.Runtime.InteropServices.StructLayoutAttribute
    Value
    System.Runtime.InteropServices.LayoutKind))
