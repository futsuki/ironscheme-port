(library (unity-engine android-java-proxy)
  (export new is? android-java-proxy? invoke java-interface)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new UnityEngine.AndroidJavaProxy a ...)))))
  (define (is? a) (clr-is UnityEngine.AndroidJavaProxy a))
  (define (android-java-proxy? a)
    (clr-is UnityEngine.AndroidJavaProxy a))
  (define-method-port
    invoke
    UnityEngine.AndroidJavaProxy
    Invoke
    (UnityEngine.AndroidJavaObject
      System.String
      UnityEngine.AndroidJavaObject[])
    (UnityEngine.AndroidJavaObject System.String System.Object[]))
  (define-field-port
    java-interface
    #f
    #f
    ()
    UnityEngine.AndroidJavaProxy
    javaInterface
    UnityEngine.AndroidJavaClass))
