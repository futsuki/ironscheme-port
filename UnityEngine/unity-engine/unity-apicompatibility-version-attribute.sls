(library (unity-engine unity-apicompatibility-version-attribute)
  (export new is? unity-apicompatibility-version-attribute? version)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.UnityAPICompatibilityVersionAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.UnityAPICompatibilityVersionAttribute a))
  (define (unity-apicompatibility-version-attribute? a)
    (clr-is UnityEngine.UnityAPICompatibilityVersionAttribute a))
  (define-field-port
    version
    #f
    #f
    (property:)
    UnityEngine.UnityAPICompatibilityVersionAttribute
    version
    System.String))
