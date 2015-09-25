(library (system
          runtime
          interop-services
          primary-interop-assembly-attribute)
  (export new
          is?
          primary-interop-assembly-attribute?
          major-version
          minor-version)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.PrimaryInteropAssemblyAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.InteropServices.PrimaryInteropAssemblyAttribute
      a))
  (define (primary-interop-assembly-attribute? a)
    (clr-is
      System.Runtime.InteropServices.PrimaryInteropAssemblyAttribute
      a))
  (define-field-port
    major-version
    #f
    #f
    (property:)
    System.Runtime.InteropServices.PrimaryInteropAssemblyAttribute
    MajorVersion
    System.Int32)
  (define-field-port
    minor-version
    #f
    #f
    (property:)
    System.Runtime.InteropServices.PrimaryInteropAssemblyAttribute
    MinorVersion
    System.Int32))
