(library (unity-engine player-prefs)
  (export new
          is?
          player-prefs?
          get-string
          set-string
          get-int
          save
          set-float
          get-float
          delete-key
          delete-all
          has-key?
          set-int)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.PlayerPrefs a ...)))))
  (define (is? a) (clr-is UnityEngine.PlayerPrefs a))
  (define (player-prefs? a) (clr-is UnityEngine.PlayerPrefs a))
  (define-method-port
    get-string
    UnityEngine.PlayerPrefs
    GetString
    (static: System.String System.String)
    (static: System.String System.String System.String))
  (define-method-port
    set-string
    UnityEngine.PlayerPrefs
    SetString
    (static: System.Void System.String System.String))
  (define-method-port
    get-int
    UnityEngine.PlayerPrefs
    GetInt
    (static: System.Int32 System.String)
    (static: System.Int32 System.String System.Int32))
  (define-method-port
    save
    UnityEngine.PlayerPrefs
    Save
    (static: System.Void))
  (define-method-port
    set-float
    UnityEngine.PlayerPrefs
    SetFloat
    (static: System.Void System.String System.Single))
  (define-method-port
    get-float
    UnityEngine.PlayerPrefs
    GetFloat
    (static: System.Single System.String)
    (static: System.Single System.String System.Single))
  (define-method-port
    delete-key
    UnityEngine.PlayerPrefs
    DeleteKey
    (static: System.Void System.String))
  (define-method-port
    delete-all
    UnityEngine.PlayerPrefs
    DeleteAll
    (static: System.Void))
  (define-method-port
    has-key?
    UnityEngine.PlayerPrefs
    HasKey
    (static: System.Boolean System.String))
  (define-method-port
    set-int
    UnityEngine.PlayerPrefs
    SetInt
    (static: System.Void System.String System.Int32)))
