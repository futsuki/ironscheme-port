(library (system reflection mono-generic-cmethod)
  (export is? mono-generic-cmethod? reflected-type)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Reflection.MonoGenericCMethod a))
  (define (mono-generic-cmethod? a)
    (clr-is System.Reflection.MonoGenericCMethod a))
  (define-field-port
    reflected-type
    #f
    #f
    (property:)
    System.Reflection.MonoGenericCMethod
    ReflectedType
    System.Type))
