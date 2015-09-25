(library (unity-engine shader-variant-collection)
  (export new
          is?
          shader-variant-collection?
          add?
          contains?
          remove?
          warm-up
          clear
          shader-count
          variant-count
          is-warmed-up?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.ShaderVariantCollection a ...)))))
  (define (is? a) (clr-is UnityEngine.ShaderVariantCollection a))
  (define (shader-variant-collection? a)
    (clr-is UnityEngine.ShaderVariantCollection a))
  (define-method-port
    add?
    UnityEngine.ShaderVariantCollection
    Add
    (System.Boolean UnityEngine.ShaderVariantCollection+ShaderVariant))
  (define-method-port
    contains?
    UnityEngine.ShaderVariantCollection
    Contains
    (System.Boolean UnityEngine.ShaderVariantCollection+ShaderVariant))
  (define-method-port
    remove?
    UnityEngine.ShaderVariantCollection
    Remove
    (System.Boolean UnityEngine.ShaderVariantCollection+ShaderVariant))
  (define-method-port
    warm-up
    UnityEngine.ShaderVariantCollection
    WarmUp
    (System.Void))
  (define-method-port
    clear
    UnityEngine.ShaderVariantCollection
    Clear
    (System.Void))
  (define-field-port
    shader-count
    #f
    #f
    (property:)
    UnityEngine.ShaderVariantCollection
    shaderCount
    System.Int32)
  (define-field-port
    variant-count
    #f
    #f
    (property:)
    UnityEngine.ShaderVariantCollection
    variantCount
    System.Int32)
  (define-field-port
    is-warmed-up?
    #f
    #f
    (property:)
    UnityEngine.ShaderVariantCollection
    isWarmedUp
    System.Boolean))
