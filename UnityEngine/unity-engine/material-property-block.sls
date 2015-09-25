(library (unity-engine material-property-block)
  (export new
          is?
          material-property-block?
          get-vector
          add-color
          add-float
          set-vector
          set-color
          set-float
          get-texture
          get-float
          add-matrix
          add-texture
          get-matrix
          set-matrix
          set-texture
          clear
          add-vector)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.MaterialPropertyBlock a ...)))))
  (define (is? a) (clr-is UnityEngine.MaterialPropertyBlock a))
  (define (material-property-block? a)
    (clr-is UnityEngine.MaterialPropertyBlock a))
  (define-method-port
    get-vector
    UnityEngine.MaterialPropertyBlock
    GetVector
    (UnityEngine.Vector4 System.Int32)
    (UnityEngine.Vector4 System.String))
  (define-method-port
    add-color
    UnityEngine.MaterialPropertyBlock
    AddColor
    (System.Void System.Int32 UnityEngine.Color)
    (System.Void System.String UnityEngine.Color))
  (define-method-port
    add-float
    UnityEngine.MaterialPropertyBlock
    AddFloat
    (System.Void System.Int32 System.Single)
    (System.Void System.String System.Single))
  (define-method-port
    set-vector
    UnityEngine.MaterialPropertyBlock
    SetVector
    (System.Void System.Int32 UnityEngine.Vector4)
    (System.Void System.String UnityEngine.Vector4))
  (define-method-port
    set-color
    UnityEngine.MaterialPropertyBlock
    SetColor
    (System.Void System.Int32 UnityEngine.Color)
    (System.Void System.String UnityEngine.Color))
  (define-method-port
    set-float
    UnityEngine.MaterialPropertyBlock
    SetFloat
    (System.Void System.Int32 System.Single)
    (System.Void System.String System.Single))
  (define-method-port
    get-texture
    UnityEngine.MaterialPropertyBlock
    GetTexture
    (UnityEngine.Texture System.Int32)
    (UnityEngine.Texture System.String))
  (define-method-port
    get-float
    UnityEngine.MaterialPropertyBlock
    GetFloat
    (System.Single System.Int32)
    (System.Single System.String))
  (define-method-port
    add-matrix
    UnityEngine.MaterialPropertyBlock
    AddMatrix
    (System.Void System.Int32 UnityEngine.Matrix4x4)
    (System.Void System.String UnityEngine.Matrix4x4))
  (define-method-port
    add-texture
    UnityEngine.MaterialPropertyBlock
    AddTexture
    (System.Void System.Int32 UnityEngine.Texture)
    (System.Void System.String UnityEngine.Texture))
  (define-method-port
    get-matrix
    UnityEngine.MaterialPropertyBlock
    GetMatrix
    (UnityEngine.Matrix4x4 System.Int32)
    (UnityEngine.Matrix4x4 System.String))
  (define-method-port
    set-matrix
    UnityEngine.MaterialPropertyBlock
    SetMatrix
    (System.Void System.Int32 UnityEngine.Matrix4x4)
    (System.Void System.String UnityEngine.Matrix4x4))
  (define-method-port
    set-texture
    UnityEngine.MaterialPropertyBlock
    SetTexture
    (System.Void System.Int32 UnityEngine.Texture)
    (System.Void System.String UnityEngine.Texture))
  (define-method-port
    clear
    UnityEngine.MaterialPropertyBlock
    Clear
    (System.Void))
  (define-method-port
    add-vector
    UnityEngine.MaterialPropertyBlock
    AddVector
    (System.Void System.Int32 UnityEngine.Vector4)
    (System.Void System.String UnityEngine.Vector4)))
