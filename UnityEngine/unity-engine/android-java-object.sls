(library (unity-engine android-java-object)
  (export new
          is?
          android-java-object?
          set
          get
          dispose
          call-static
          get-static
          set-static
          get-raw-object
          call
          get-raw-class)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.AndroidJavaObject a ...)))))
  (define (is? a) (clr-is UnityEngine.AndroidJavaObject a))
  (define (android-java-object? a)
    (clr-is UnityEngine.AndroidJavaObject a))
  (define-method-port set UnityEngine.AndroidJavaObject Set)
  (define-method-port get UnityEngine.AndroidJavaObject Get)
  (define-method-port
    dispose
    UnityEngine.AndroidJavaObject
    Dispose
    (System.Void))
  (define-method-port
    call-static
    UnityEngine.AndroidJavaObject
    CallStatic
    (System.Void System.String System.Object[]))
  (define-method-port
    get-static
    UnityEngine.AndroidJavaObject
    GetStatic)
  (define-method-port
    set-static
    UnityEngine.AndroidJavaObject
    SetStatic)
  (define-method-port
    get-raw-object
    UnityEngine.AndroidJavaObject
    GetRawObject
    (System.IntPtr))
  (define-method-port
    call
    UnityEngine.AndroidJavaObject
    Call
    (System.Void System.String System.Object[]))
  (define-method-port
    get-raw-class
    UnityEngine.AndroidJavaObject
    GetRawClass
    (System.IntPtr)))
