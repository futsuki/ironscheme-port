(library (unity-engine compute-shader)
  (export new
          is?
          compute-shader?
          set-ints
          set-vector
          set-float
          find-kernel
          set-buffer
          set-floats
          dispatch
          set-texture
          set-int)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.ComputeShader a ...)))))
  (define (is? a) (clr-is UnityEngine.ComputeShader a))
  (define (compute-shader? a) (clr-is UnityEngine.ComputeShader a))
  (define-method-port
    set-ints
    UnityEngine.ComputeShader
    SetInts
    (System.Void System.String System.Int32[]))
  (define-method-port
    set-vector
    UnityEngine.ComputeShader
    SetVector
    (System.Void System.String UnityEngine.Vector4))
  (define-method-port
    set-float
    UnityEngine.ComputeShader
    SetFloat
    (System.Void System.String System.Single))
  (define-method-port
    find-kernel
    UnityEngine.ComputeShader
    FindKernel
    (System.Int32 System.String))
  (define-method-port
    set-buffer
    UnityEngine.ComputeShader
    SetBuffer
    (System.Void System.Int32 System.String UnityEngine.ComputeBuffer))
  (define-method-port
    set-floats
    UnityEngine.ComputeShader
    SetFloats
    (System.Void System.String System.Single[]))
  (define-method-port
    dispatch
    UnityEngine.ComputeShader
    Dispatch
    (System.Void System.Int32 System.Int32 System.Int32 System.Int32))
  (define-method-port
    set-texture
    UnityEngine.ComputeShader
    SetTexture
    (System.Void System.Int32 System.String UnityEngine.Texture))
  (define-method-port
    set-int
    UnityEngine.ComputeShader
    SetInt
    (System.Void System.String System.Int32)))
