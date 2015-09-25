(library (system runtime compiler-services custom-constant-attribute)
  (export is? custom-constant-attribute? value)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Runtime.CompilerServices.CustomConstantAttribute a))
  (define (custom-constant-attribute? a)
    (clr-is System.Runtime.CompilerServices.CustomConstantAttribute a))
  (define-field-port
    value
    #f
    #f
    (property:)
    System.Runtime.CompilerServices.CustomConstantAttribute
    Value
    System.Object))
