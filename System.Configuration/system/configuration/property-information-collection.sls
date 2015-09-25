(library (system configuration property-information-collection)
  (export is?
          property-information-collection?
          get-object-data
          get-enumerator
          copy-to
          item)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Configuration.PropertyInformationCollection a))
  (define (property-information-collection? a)
    (clr-is System.Configuration.PropertyInformationCollection a))
  (define-method-port
    get-object-data
    System.Configuration.PropertyInformationCollection
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    get-enumerator
    System.Configuration.PropertyInformationCollection
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    copy-to
    System.Configuration.PropertyInformationCollection
    CopyTo
    (System.Void
      System.Configuration.PropertyInformation[]
      System.Int32))
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Configuration.PropertyInformationCollection
    Item
    System.Configuration.PropertyInformation))
