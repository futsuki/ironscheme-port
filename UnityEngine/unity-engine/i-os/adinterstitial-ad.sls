(library (unity-engine i-os adinterstitial-ad)
  (export new
          is?
          adinterstitial-ad?
          reload-ad
          show
          is-available?
          loaded?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.iOS.ADInterstitialAd a ...)))))
  (define (is? a) (clr-is UnityEngine.iOS.ADInterstitialAd a))
  (define (adinterstitial-ad? a)
    (clr-is UnityEngine.iOS.ADInterstitialAd a))
  (define-method-port
    reload-ad
    UnityEngine.iOS.ADInterstitialAd
    ReloadAd
    (System.Void))
  (define-method-port
    show
    UnityEngine.iOS.ADInterstitialAd
    Show
    (System.Void))
  (define-field-port
    is-available?
    #f
    #f
    (static: property:)
    UnityEngine.iOS.ADInterstitialAd
    isAvailable
    System.Boolean)
  (define-field-port
    loaded?
    #f
    #f
    (property:)
    UnityEngine.iOS.ADInterstitialAd
    loaded
    System.Boolean))
