(library (system runtime interop-services best-fit-mapping-attribute)
  (export new
          is?
          best-fit-mapping-attribute?
          throw-on-unmappable-char?-get
          throw-on-unmappable-char?-set!
          throw-on-unmappable-char?-update!
          best-fit-mapping?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.InteropServices.BestFitMappingAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.InteropServices.BestFitMappingAttribute a))
  (define (best-fit-mapping-attribute? a)
    (clr-is System.Runtime.InteropServices.BestFitMappingAttribute a))
  (define-field-port
    throw-on-unmappable-char?-get
    throw-on-unmappable-char?-set!
    throw-on-unmappable-char?-update!
    ()
    System.Runtime.InteropServices.BestFitMappingAttribute
    ThrowOnUnmappableChar
    System.Boolean)
  (define-field-port
    best-fit-mapping?
    #f
    #f
    (property:)
    System.Runtime.InteropServices.BestFitMappingAttribute
    BestFitMapping
    System.Boolean))
