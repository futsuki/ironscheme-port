(library (system runtime interop-services dll-import-attribute)
  (export new
          is?
          dll-import-attribute?
          calling-convention-get
          calling-convention-set!
          calling-convention-update!
          char-set-get
          char-set-set!
          char-set-update!
          entry-point-get
          entry-point-set!
          entry-point-update!
          exact-spelling?-get
          exact-spelling?-set!
          exact-spelling?-update!
          preserve-sig?-get
          preserve-sig?-set!
          preserve-sig?-update!
          set-last-error?-get
          set-last-error?-set!
          set-last-error?-update!
          best-fit-mapping?-get
          best-fit-mapping?-set!
          best-fit-mapping?-update!
          throw-on-unmappable-char?-get
          throw-on-unmappable-char?-set!
          throw-on-unmappable-char?-update!
          value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.DllImportAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.InteropServices.DllImportAttribute a))
  (define (dll-import-attribute? a)
    (clr-is System.Runtime.InteropServices.DllImportAttribute a))
  (define-field-port
    calling-convention-get
    calling-convention-set!
    calling-convention-update!
    ()
    System.Runtime.InteropServices.DllImportAttribute
    CallingConvention
    System.Runtime.InteropServices.CallingConvention)
  (define-field-port
    char-set-get
    char-set-set!
    char-set-update!
    ()
    System.Runtime.InteropServices.DllImportAttribute
    CharSet
    System.Runtime.InteropServices.CharSet)
  (define-field-port
    entry-point-get
    entry-point-set!
    entry-point-update!
    ()
    System.Runtime.InteropServices.DllImportAttribute
    EntryPoint
    System.String)
  (define-field-port
    exact-spelling?-get
    exact-spelling?-set!
    exact-spelling?-update!
    ()
    System.Runtime.InteropServices.DllImportAttribute
    ExactSpelling
    System.Boolean)
  (define-field-port
    preserve-sig?-get
    preserve-sig?-set!
    preserve-sig?-update!
    ()
    System.Runtime.InteropServices.DllImportAttribute
    PreserveSig
    System.Boolean)
  (define-field-port
    set-last-error?-get
    set-last-error?-set!
    set-last-error?-update!
    ()
    System.Runtime.InteropServices.DllImportAttribute
    SetLastError
    System.Boolean)
  (define-field-port
    best-fit-mapping?-get
    best-fit-mapping?-set!
    best-fit-mapping?-update!
    ()
    System.Runtime.InteropServices.DllImportAttribute
    BestFitMapping
    System.Boolean)
  (define-field-port
    throw-on-unmappable-char?-get
    throw-on-unmappable-char?-set!
    throw-on-unmappable-char?-update!
    ()
    System.Runtime.InteropServices.DllImportAttribute
    ThrowOnUnmappableChar
    System.Boolean)
  (define-field-port
    value
    #f
    #f
    (property:)
    System.Runtime.InteropServices.DllImportAttribute
    Value
    System.String))
