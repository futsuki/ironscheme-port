(library (unity-engine line-renderer)
  (export new
          is?
          line-renderer?
          set-vertex-count
          set-position
          set-colors
          set-width
          use-world-space?-get
          use-world-space?-set!
          use-world-space?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.LineRenderer a ...)))))
  (define (is? a) (clr-is UnityEngine.LineRenderer a))
  (define (line-renderer? a) (clr-is UnityEngine.LineRenderer a))
  (define-method-port
    set-vertex-count
    UnityEngine.LineRenderer
    SetVertexCount
    (System.Void System.Int32))
  (define-method-port
    set-position
    UnityEngine.LineRenderer
    SetPosition
    (System.Void System.Int32 UnityEngine.Vector3))
  (define-method-port
    set-colors
    UnityEngine.LineRenderer
    SetColors
    (System.Void UnityEngine.Color UnityEngine.Color))
  (define-method-port
    set-width
    UnityEngine.LineRenderer
    SetWidth
    (System.Void System.Single System.Single))
  (define-field-port
    use-world-space?-get
    use-world-space?-set!
    use-world-space?-update!
    (property:)
    UnityEngine.LineRenderer
    useWorldSpace
    System.Boolean))
