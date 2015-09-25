(library (unity-engine animator-utility)
  (export new
          is?
          animator-utility?
          optimize-transform-hierarchy
          deoptimize-transform-hierarchy)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.AnimatorUtility a ...)))))
  (define (is? a) (clr-is UnityEngine.AnimatorUtility a))
  (define (animator-utility? a) (clr-is UnityEngine.AnimatorUtility a))
  (define-method-port
    optimize-transform-hierarchy
    UnityEngine.AnimatorUtility
    OptimizeTransformHierarchy
    (static: System.Void UnityEngine.GameObject System.String[]))
  (define-method-port
    deoptimize-transform-hierarchy
    UnityEngine.AnimatorUtility
    DeoptimizeTransformHierarchy
    (static: System.Void UnityEngine.GameObject)))
