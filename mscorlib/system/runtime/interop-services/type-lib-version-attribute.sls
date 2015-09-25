(library (system runtime interop-services type-lib-version-attribute)
  (export new
          is?
          type-lib-version-attribute?
          major-version
          minor-version)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.TypeLibVersionAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.InteropServices.TypeLibVersionAttribute a))
  (define (type-lib-version-attribute? a)
    (clr-is System.Runtime.InteropServices.TypeLibVersionAttribute a))
  (define-field-port
    major-version
    #f
    #f
    (property:)
    System.Runtime.InteropServices.TypeLibVersionAttribute
    MajorVersion
    System.Int32)
  (define-field-port
    minor-version
    #f
    #f
    (property:)
    System.Runtime.InteropServices.TypeLibVersionAttribute
    MinorVersion
    System.Int32))
