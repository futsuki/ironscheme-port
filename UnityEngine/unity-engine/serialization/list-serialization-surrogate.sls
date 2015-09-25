(library (unity-engine serialization list-serialization-surrogate)
  (export new
          is?
          list-serialization-surrogate?
          set-object-data
          get-object-data
          default)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Serialization.ListSerializationSurrogate
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Serialization.ListSerializationSurrogate a))
  (define (list-serialization-surrogate? a)
    (clr-is UnityEngine.Serialization.ListSerializationSurrogate a))
  (define-method-port
    set-object-data
    UnityEngine.Serialization.ListSerializationSurrogate
    SetObjectData
    (System.Object
      System.Object
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext
      System.Runtime.Serialization.ISurrogateSelector))
  (define-method-port
    get-object-data
    UnityEngine.Serialization.ListSerializationSurrogate
    GetObjectData
    (System.Void
      System.Object
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-field-port
    default
    #f
    #f
    (static:)
    UnityEngine.Serialization.ListSerializationSurrogate
    Default
    System.Runtime.Serialization.ISerializationSurrogate))
