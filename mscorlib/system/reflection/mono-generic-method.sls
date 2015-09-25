(library (system reflection mono-generic-method)
  (export is? mono-generic-method? reflected-type)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Reflection.MonoGenericMethod a))
  (define (mono-generic-method? a)
    (clr-is System.Reflection.MonoGenericMethod a))
  (define-field-port
    reflected-type
    #f
    #f
    (property:)
    System.Reflection.MonoGenericMethod
    ReflectedType
    System.Type))
