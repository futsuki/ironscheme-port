(library (system runtime serialization surrogate-selector)
  (export new
          is?
          surrogate-selector?
          remove-surrogate
          get-next-selector
          get-surrogate
          chain-selector
          add-surrogate)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Runtime.Serialization.SurrogateSelector
             a
             ...)))))
  (define (is? a)
    (clr-is System.Runtime.Serialization.SurrogateSelector a))
  (define (surrogate-selector? a)
    (clr-is System.Runtime.Serialization.SurrogateSelector a))
  (define-method-port
    remove-surrogate
    System.Runtime.Serialization.SurrogateSelector
    RemoveSurrogate
    (System.Void
      System.Type
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    get-next-selector
    System.Runtime.Serialization.SurrogateSelector
    GetNextSelector
    (System.Runtime.Serialization.ISurrogateSelector))
  (define-method-port
    get-surrogate
    System.Runtime.Serialization.SurrogateSelector
    GetSurrogate
    (System.Runtime.Serialization.ISerializationSurrogate
      System.Type
      System.Runtime.Serialization.StreamingContext
      System.Runtime.Serialization.ISurrogateSelector&))
  (define-method-port
    chain-selector
    System.Runtime.Serialization.SurrogateSelector
    ChainSelector
    (System.Void System.Runtime.Serialization.ISurrogateSelector))
  (define-method-port
    add-surrogate
    System.Runtime.Serialization.SurrogateSelector
    AddSurrogate
    (System.Void
      System.Type
      System.Runtime.Serialization.StreamingContext
      System.Runtime.Serialization.ISerializationSurrogate)))
