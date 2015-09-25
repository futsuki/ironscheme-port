(library (system runtime serialization serialization-binder)
  (export is? serialization-binder? bind-to-type)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Runtime.Serialization.SerializationBinder a))
  (define (serialization-binder? a)
    (clr-is System.Runtime.Serialization.SerializationBinder a))
  (define-method-port
    bind-to-type
    System.Runtime.Serialization.SerializationBinder
    BindToType
    (System.Type System.String System.String)))
