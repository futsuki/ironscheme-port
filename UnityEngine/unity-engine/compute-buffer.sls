(library (unity-engine compute-buffer)
  (export new
          is?
          compute-buffer?
          set-data
          dispose
          get-data
          release
          copy-count
          count
          stride)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.ComputeBuffer a ...)))))
  (define (is? a) (clr-is UnityEngine.ComputeBuffer a))
  (define (compute-buffer? a) (clr-is UnityEngine.ComputeBuffer a))
  (define-method-port
    set-data
    UnityEngine.ComputeBuffer
    SetData
    (System.Void System.Array))
  (define-method-port
    dispose
    UnityEngine.ComputeBuffer
    Dispose
    (System.Void))
  (define-method-port
    get-data
    UnityEngine.ComputeBuffer
    GetData
    (System.Void System.Array))
  (define-method-port
    release
    UnityEngine.ComputeBuffer
    Release
    (System.Void))
  (define-method-port
    copy-count
    UnityEngine.ComputeBuffer
    CopyCount
    (static:
      System.Void
      UnityEngine.ComputeBuffer
      UnityEngine.ComputeBuffer
      System.Int32))
  (define-field-port
    count
    #f
    #f
    (property:)
    UnityEngine.ComputeBuffer
    count
    System.Int32)
  (define-field-port
    stride
    #f
    #f
    (property:)
    UnityEngine.ComputeBuffer
    stride
    System.Int32))
