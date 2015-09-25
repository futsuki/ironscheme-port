(library (system runtime compiler-services fixed-buffer-attribute)
  (export new is? fixed-buffer-attribute? element-type length)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.CompilerServices.FixedBufferAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.CompilerServices.FixedBufferAttribute a))
  (define (fixed-buffer-attribute? a)
    (clr-is System.Runtime.CompilerServices.FixedBufferAttribute a))
  (define-field-port
    element-type
    #f
    #f
    (property:)
    System.Runtime.CompilerServices.FixedBufferAttribute
    ElementType
    System.Type)
  (define-field-port
    length
    #f
    #f
    (property:)
    System.Runtime.CompilerServices.FixedBufferAttribute
    Length
    System.Int32))
