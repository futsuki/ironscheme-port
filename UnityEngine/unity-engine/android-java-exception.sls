(library (unity-engine android-java-exception)
  (export is? android-java-exception?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is UnityEngine.AndroidJavaException a))
  (define (android-java-exception? a)
    (clr-is UnityEngine.AndroidJavaException a)))
