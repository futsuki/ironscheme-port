(library (unity-engine android-java-runnable-proxy)
  (export new is? android-java-runnable-proxy? run)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new UnityEngine.AndroidJavaRunnableProxy a ...)))))
  (define (is? a) (clr-is UnityEngine.AndroidJavaRunnableProxy a))
  (define (android-java-runnable-proxy? a)
    (clr-is UnityEngine.AndroidJavaRunnableProxy a))
  (define-method-port
    run
    UnityEngine.AndroidJavaRunnableProxy
    run
    (System.Void)))
