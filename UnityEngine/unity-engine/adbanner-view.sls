(library (unity-engine adbanner-view)
  (export new is? adbanner-view?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.ADBannerView a ...)))))
  (define (is? a) (clr-is UnityEngine.ADBannerView a))
  (define (adbanner-view? a) (clr-is UnityEngine.ADBannerView a)))
