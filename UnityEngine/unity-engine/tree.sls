(library (unity-engine tree)
  (export new
          is?
          tree?
          data-get
          data-set!
          data-update!
          has-speed-tree-wind?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.Tree a ...)))))
  (define (is? a) (clr-is UnityEngine.Tree a))
  (define (tree? a) (clr-is UnityEngine.Tree a))
  (define-field-port
    data-get
    data-set!
    data-update!
    (property:)
    UnityEngine.Tree
    data
    UnityEngine.ScriptableObject)
  (define-field-port
    has-speed-tree-wind?
    #f
    #f
    (property:)
    UnityEngine.Tree
    hasSpeedTreeWind
    System.Boolean))
