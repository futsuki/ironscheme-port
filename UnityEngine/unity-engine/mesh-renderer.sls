(library (unity-engine mesh-renderer)
  (export new
          is?
          mesh-renderer?
          additional-vertex-streams-get
          additional-vertex-streams-set!
          additional-vertex-streams-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.MeshRenderer a ...)))))
  (define (is? a) (clr-is UnityEngine.MeshRenderer a))
  (define (mesh-renderer? a) (clr-is UnityEngine.MeshRenderer a))
  (define-field-port
    additional-vertex-streams-get
    additional-vertex-streams-set!
    additional-vertex-streams-update!
    (property:)
    UnityEngine.MeshRenderer
    additionalVertexStreams
    UnityEngine.Mesh))
