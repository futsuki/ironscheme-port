(library (unity-engine property-attribute)
  (export is? property-attribute? order-get order-set! order-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.PropertyAttribute a))
  (define (property-attribute? a)
    (clr-is UnityEngine.PropertyAttribute a))
  (define-field-port
    order-get
    order-set!
    order-update!
    (property:)
    UnityEngine.PropertyAttribute
    order
    System.Int32))
