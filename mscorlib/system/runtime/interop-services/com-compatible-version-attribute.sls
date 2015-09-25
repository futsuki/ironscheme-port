(library (system
          runtime
          interop-services
          com-compatible-version-attribute)
  (export new
          is?
          com-compatible-version-attribute?
          major-version
          minor-version
          build-number
          revision-number)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.ComCompatibleVersionAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.InteropServices.ComCompatibleVersionAttribute
      a))
  (define (com-compatible-version-attribute? a)
    (clr-is
      System.Runtime.InteropServices.ComCompatibleVersionAttribute
      a))
  (define-field-port
    major-version
    #f
    #f
    (property:)
    System.Runtime.InteropServices.ComCompatibleVersionAttribute
    MajorVersion
    System.Int32)
  (define-field-port
    minor-version
    #f
    #f
    (property:)
    System.Runtime.InteropServices.ComCompatibleVersionAttribute
    MinorVersion
    System.Int32)
  (define-field-port
    build-number
    #f
    #f
    (property:)
    System.Runtime.InteropServices.ComCompatibleVersionAttribute
    BuildNumber
    System.Int32)
  (define-field-port
    revision-number
    #f
    #f
    (property:)
    System.Runtime.InteropServices.ComCompatibleVersionAttribute
    RevisionNumber
    System.Int32))
