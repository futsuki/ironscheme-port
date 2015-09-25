(library (unity-engine procedural-texture)
  (export new
          is?
          procedural-texture?
          get-pixels32
          get-procedural-output-type
          has-alpha?
          format)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.ProceduralTexture a ...)))))
  (define (is? a) (clr-is UnityEngine.ProceduralTexture a))
  (define (procedural-texture? a)
    (clr-is UnityEngine.ProceduralTexture a))
  (define-method-port
    get-pixels32
    UnityEngine.ProceduralTexture
    GetPixels32
    (UnityEngine.Color32[]
      System.Int32
      System.Int32
      System.Int32
      System.Int32))
  (define-method-port
    get-procedural-output-type
    UnityEngine.ProceduralTexture
    GetProceduralOutputType
    (UnityEngine.ProceduralOutputType))
  (define-field-port
    has-alpha?
    #f
    #f
    (property:)
    UnityEngine.ProceduralTexture
    hasAlpha
    System.Boolean)
  (define-field-port
    format
    #f
    #f
    (property:)
    UnityEngine.ProceduralTexture
    format
    UnityEngine.TextureFormat))
