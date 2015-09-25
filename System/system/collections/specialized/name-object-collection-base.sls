(library (system collections specialized name-object-collection-base)
  (export is?
          name-object-collection-base?
          get-object-data
          get-enumerator
          on-deserialization
          keys
          count)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Collections.Specialized.NameObjectCollectionBase a))
  (define (name-object-collection-base? a)
    (clr-is System.Collections.Specialized.NameObjectCollectionBase a))
  (define-method-port
    get-object-data
    System.Collections.Specialized.NameObjectCollectionBase
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    get-enumerator
    System.Collections.Specialized.NameObjectCollectionBase
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    on-deserialization
    System.Collections.Specialized.NameObjectCollectionBase
    OnDeserialization
    (System.Void System.Object))
  (define-field-port
    keys
    #f
    #f
    (property:)
    System.Collections.Specialized.NameObjectCollectionBase
    Keys
    System.Collections.Specialized.NameObjectCollectionBase+KeysCollection)
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Collections.Specialized.NameObjectCollectionBase
    Count
    System.Int32))
