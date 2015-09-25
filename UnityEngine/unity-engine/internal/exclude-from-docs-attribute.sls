(library (unity-engine internal exclude-from-docs-attribute)
  (export new is? exclude-from-docs-attribute?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Internal.ExcludeFromDocsAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Internal.ExcludeFromDocsAttribute a))
  (define (exclude-from-docs-attribute? a)
    (clr-is UnityEngine.Internal.ExcludeFromDocsAttribute a)))
