(library (system runtime serialization formatter)
  (export is?
          formatter?
          deserialize
          serialize
          binder-get
          binder-set!
          binder-update!
          context-get
          context-set!
          context-update!
          surrogate-selector-get
          surrogate-selector-set!
          surrogate-selector-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Runtime.Serialization.Formatter a))
  (define (formatter? a)
    (clr-is System.Runtime.Serialization.Formatter a))
  (define-method-port
    deserialize
    System.Runtime.Serialization.Formatter
    Deserialize
    (System.Object System.IO.Stream))
  (define-method-port
    serialize
    System.Runtime.Serialization.Formatter
    Serialize
    (System.Void System.IO.Stream System.Object))
  (define-field-port
    binder-get
    binder-set!
    binder-update!
    (property:)
    System.Runtime.Serialization.Formatter
    Binder
    System.Runtime.Serialization.SerializationBinder)
  (define-field-port
    context-get
    context-set!
    context-update!
    (property:)
    System.Runtime.Serialization.Formatter
    Context
    System.Runtime.Serialization.StreamingContext)
  (define-field-port
    surrogate-selector-get
    surrogate-selector-set!
    surrogate-selector-update!
    (property:)
    System.Runtime.Serialization.Formatter
    SurrogateSelector
    System.Runtime.Serialization.ISurrogateSelector))
