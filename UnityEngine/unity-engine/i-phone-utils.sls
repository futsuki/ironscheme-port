(library (unity-engine i-phone-utils)
  (export new
          is?
          i-phone-utils?
          vibrate
          play-movie
          play-movie-url
          is-application-genuine?
          is-application-genuine-available?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.iPhoneUtils a ...)))))
  (define (is? a) (clr-is UnityEngine.iPhoneUtils a))
  (define (i-phone-utils? a) (clr-is UnityEngine.iPhoneUtils a))
  (define-method-port
    vibrate
    UnityEngine.iPhoneUtils
    Vibrate
    (static: System.Void))
  (define-method-port
    play-movie
    UnityEngine.iPhoneUtils
    PlayMovie
    (static: System.Void System.String UnityEngine.Color)
    (static:
      System.Void
      System.String
      UnityEngine.Color
      UnityEngine.iPhoneMovieControlMode)
    (static:
      System.Void
      System.String
      UnityEngine.Color
      UnityEngine.iPhoneMovieControlMode
      UnityEngine.iPhoneMovieScalingMode))
  (define-method-port
    play-movie-url
    UnityEngine.iPhoneUtils
    PlayMovieURL
    (static: System.Void System.String UnityEngine.Color)
    (static:
      System.Void
      System.String
      UnityEngine.Color
      UnityEngine.iPhoneMovieControlMode)
    (static:
      System.Void
      System.String
      UnityEngine.Color
      UnityEngine.iPhoneMovieControlMode
      UnityEngine.iPhoneMovieScalingMode))
  (define-field-port
    is-application-genuine?
    #f
    #f
    (static: property:)
    UnityEngine.iPhoneUtils
    isApplicationGenuine
    System.Boolean)
  (define-field-port
    is-application-genuine-available?
    #f
    #f
    (static: property:)
    UnityEngine.iPhoneUtils
    isApplicationGenuineAvailable
    System.Boolean))
