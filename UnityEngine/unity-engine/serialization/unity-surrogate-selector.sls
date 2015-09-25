(library (unity-engine serialization unity-surrogate-selector)
  (export new
          is?
          unity-surrogate-selector?
          get-next-selector
          get-surrogate
          chain-selector)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Serialization.UnitySurrogateSelector
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Serialization.UnitySurrogateSelector a))
  (define (unity-surrogate-selector? a)
    (clr-is UnityEngine.Serialization.UnitySurrogateSelector a))
  (define-method-port
    get-next-selector
    UnityEngine.Serialization.UnitySurrogateSelector
    GetNextSelector
    (System.Runtime.Serialization.ISurrogateSelector))
  (define-method-port
    get-surrogate
    UnityEngine.Serialization.UnitySurrogateSelector
    GetSurrogate
    (System.Runtime.Serialization.ISerializationSurrogate
      System.Type
      System.Runtime.Serialization.StreamingContext
      System.Runtime.Serialization.ISurrogateSelector&))
  (define-method-port
    chain-selector
    UnityEngine.Serialization.UnitySurrogateSelector
    ChainSelector
    (System.Void System.Runtime.Serialization.ISurrogateSelector)))
