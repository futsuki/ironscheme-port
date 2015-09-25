(library (system runtime interop-services marshal-as-attribute)
  (export new
          is?
          marshal-as-attribute?
          array-sub-type-get
          array-sub-type-set!
          array-sub-type-update!
          marshal-cookie-get
          marshal-cookie-set!
          marshal-cookie-update!
          marshal-type-get
          marshal-type-set!
          marshal-type-update!
          marshal-type-ref-get
          marshal-type-ref-set!
          marshal-type-ref-update!
          safe-array-sub-type-get
          safe-array-sub-type-set!
          safe-array-sub-type-update!
          size-const-get
          size-const-set!
          size-const-update!
          size-param-index-get
          size-param-index-set!
          size-param-index-update!
          safe-array-user-defined-sub-type-get
          safe-array-user-defined-sub-type-set!
          safe-array-user-defined-sub-type-update!
          iid-parameter-index-get
          iid-parameter-index-set!
          iid-parameter-index-update!
          value)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.MarshalAsAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.InteropServices.MarshalAsAttribute a))
  (define (marshal-as-attribute? a)
    (clr-is System.Runtime.InteropServices.MarshalAsAttribute a))
  (define-field-port
    array-sub-type-get
    array-sub-type-set!
    array-sub-type-update!
    ()
    System.Runtime.InteropServices.MarshalAsAttribute
    ArraySubType
    System.Runtime.InteropServices.UnmanagedType)
  (define-field-port
    marshal-cookie-get
    marshal-cookie-set!
    marshal-cookie-update!
    ()
    System.Runtime.InteropServices.MarshalAsAttribute
    MarshalCookie
    System.String)
  (define-field-port
    marshal-type-get
    marshal-type-set!
    marshal-type-update!
    ()
    System.Runtime.InteropServices.MarshalAsAttribute
    MarshalType
    System.String)
  (define-field-port
    marshal-type-ref-get
    marshal-type-ref-set!
    marshal-type-ref-update!
    ()
    System.Runtime.InteropServices.MarshalAsAttribute
    MarshalTypeRef
    System.Type)
  (define-field-port
    safe-array-sub-type-get
    safe-array-sub-type-set!
    safe-array-sub-type-update!
    ()
    System.Runtime.InteropServices.MarshalAsAttribute
    SafeArraySubType
    System.Runtime.InteropServices.VarEnum)
  (define-field-port
    size-const-get
    size-const-set!
    size-const-update!
    ()
    System.Runtime.InteropServices.MarshalAsAttribute
    SizeConst
    System.Int32)
  (define-field-port
    size-param-index-get
    size-param-index-set!
    size-param-index-update!
    ()
    System.Runtime.InteropServices.MarshalAsAttribute
    SizeParamIndex
    System.Int16)
  (define-field-port
    safe-array-user-defined-sub-type-get
    safe-array-user-defined-sub-type-set!
    safe-array-user-defined-sub-type-update!
    ()
    System.Runtime.InteropServices.MarshalAsAttribute
    SafeArrayUserDefinedSubType
    System.Type)
  (define-field-port
    iid-parameter-index-get
    iid-parameter-index-set!
    iid-parameter-index-update!
    ()
    System.Runtime.InteropServices.MarshalAsAttribute
    IidParameterIndex
    System.Int32)
  (define-field-port
    value
    #f
    #f
    (property:)
    System.Runtime.InteropServices.MarshalAsAttribute
    Value
    System.Runtime.InteropServices.UnmanagedType))
