(library (system
          component-model
          design
          serialization
          serialization-store)
  (export is? serialization-store? save close errors)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is
      System.ComponentModel.Design.Serialization.SerializationStore
      a))
  (define (serialization-store? a)
    (clr-is
      System.ComponentModel.Design.Serialization.SerializationStore
      a))
  (define-method-port
    save
    System.ComponentModel.Design.Serialization.SerializationStore
    Save
    (System.Void System.IO.Stream))
  (define-method-port
    close
    System.ComponentModel.Design.Serialization.SerializationStore
    Close
    (System.Void))
  (define-field-port
    errors
    #f
    #f
    (property:)
    System.ComponentModel.Design.Serialization.SerializationStore
    Errors
    System.Collections.ICollection))
