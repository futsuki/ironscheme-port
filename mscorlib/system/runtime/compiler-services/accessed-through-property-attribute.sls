(library (system
          runtime
          compiler-services
          accessed-through-property-attribute)
  (export new is? accessed-through-property-attribute? property-name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.CompilerServices.AccessedThroughPropertyAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.Runtime.CompilerServices.AccessedThroughPropertyAttribute
      a))
  (define (accessed-through-property-attribute? a)
    (clr-is
      System.Runtime.CompilerServices.AccessedThroughPropertyAttribute
      a))
  (define-field-port
    property-name
    #f
    #f
    (property:)
    System.Runtime.CompilerServices.AccessedThroughPropertyAttribute
    PropertyName
    System.String))
