(library (system
          runtime
          interop-services
          unmanaged-function-pointer-attribute)
  (export new
          is?
          unmanaged-function-pointer-attribute?
          char-set-get
          char-set-set!
          char-set-update!
          set-last-error?-get
          set-last-error?-set!
          set-last-error?-update!
          best-fit-mapping?-get
          best-fit-mapping?-set!
          best-fit-mapping?-update!
          throw-on-unmappable-char?-get
          throw-on-unmappable-char?-set!
          throw-on-unmappable-char?-update!
          calling-convention)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.UnmanagedFunctionPointerAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.InteropServices.UnmanagedFunctionPointerAttribute
      a))
  (define (unmanaged-function-pointer-attribute? a)
    (clr-is
      System.Runtime.InteropServices.UnmanagedFunctionPointerAttribute
      a))
  (define-field-port
    char-set-get
    char-set-set!
    char-set-update!
    ()
    System.Runtime.InteropServices.UnmanagedFunctionPointerAttribute
    CharSet
    System.Runtime.InteropServices.CharSet)
  (define-field-port
    set-last-error?-get
    set-last-error?-set!
    set-last-error?-update!
    ()
    System.Runtime.InteropServices.UnmanagedFunctionPointerAttribute
    SetLastError
    System.Boolean)
  (define-field-port
    best-fit-mapping?-get
    best-fit-mapping?-set!
    best-fit-mapping?-update!
    ()
    System.Runtime.InteropServices.UnmanagedFunctionPointerAttribute
    BestFitMapping
    System.Boolean)
  (define-field-port
    throw-on-unmappable-char?-get
    throw-on-unmappable-char?-set!
    throw-on-unmappable-char?-update!
    ()
    System.Runtime.InteropServices.UnmanagedFunctionPointerAttribute
    ThrowOnUnmappableChar
    System.Boolean)
  (define-field-port
    calling-convention
    #f
    #f
    (property:)
    System.Runtime.InteropServices.UnmanagedFunctionPointerAttribute
    CallingConvention
    System.Runtime.InteropServices.CallingConvention))
