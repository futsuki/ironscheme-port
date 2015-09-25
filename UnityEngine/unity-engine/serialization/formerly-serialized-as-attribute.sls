(library (unity-engine serialization formerly-serialized-as-attribute)
  (export new is? formerly-serialized-as-attribute? old-name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Serialization.FormerlySerializedAsAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Serialization.FormerlySerializedAsAttribute a))
  (define (formerly-serialized-as-attribute? a)
    (clr-is UnityEngine.Serialization.FormerlySerializedAsAttribute a))
  (define-field-port
    old-name
    #f
    #f
    (property:)
    UnityEngine.Serialization.FormerlySerializedAsAttribute
    oldName
    System.String))
