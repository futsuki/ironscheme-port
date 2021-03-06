(library (unity-engine adinterstitial-ad)
  (export new is? adinterstitial-ad?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.ADInterstitialAd a ...)))))
  (define (is? a) (clr-is UnityEngine.ADInterstitialAd a))
  (define (adinterstitial-ad? a)
    (clr-is UnityEngine.ADInterstitialAd a)))
