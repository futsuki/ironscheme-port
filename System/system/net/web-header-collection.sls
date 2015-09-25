(library (system net web-header-collection)
  (export new
          is?
          web-header-collection?
          get-values
          set
          get
          get-object-data
          to-byte-array
          get-enumerator
          add
          is-restricted?
          on-deserialization
          clear
          to-string
          get-key
          remove
          all-keys
          count
          keys
          item-get
          item-set!
          item-update!
          item-get
          item-set!
          item-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.WebHeaderCollection a ...)))))
  (define (is? a) (clr-is System.Net.WebHeaderCollection a))
  (define (web-header-collection? a)
    (clr-is System.Net.WebHeaderCollection a))
  (define-method-port
    get-values
    System.Net.WebHeaderCollection
    GetValues
    (System.String[] System.Int32)
    (System.String[] System.String))
  (define-method-port
    set
    System.Net.WebHeaderCollection
    Set
    (System.Void System.Net.HttpResponseHeader System.String)
    (System.Void System.Net.HttpRequestHeader System.String)
    (System.Void System.String System.String))
  (define-method-port
    get
    System.Net.WebHeaderCollection
    Get
    (System.String System.String)
    (System.String System.Int32))
  (define-method-port
    get-object-data
    System.Net.WebHeaderCollection
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    to-byte-array
    System.Net.WebHeaderCollection
    ToByteArray
    (System.Byte[]))
  (define-method-port
    get-enumerator
    System.Net.WebHeaderCollection
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    add
    System.Net.WebHeaderCollection
    Add
    (System.Void System.Net.HttpResponseHeader System.String)
    (System.Void System.Net.HttpRequestHeader System.String)
    (System.Void System.String System.String)
    (System.Void System.String))
  (define-method-port
    is-restricted?
    System.Net.WebHeaderCollection
    IsRestricted
    (static: System.Boolean System.String System.Boolean)
    (static: System.Boolean System.String))
  (define-method-port
    on-deserialization
    System.Net.WebHeaderCollection
    OnDeserialization
    (System.Void System.Object))
  (define-method-port
    clear
    System.Net.WebHeaderCollection
    Clear
    (System.Void))
  (define-method-port
    to-string
    System.Net.WebHeaderCollection
    ToString
    (System.String))
  (define-method-port
    get-key
    System.Net.WebHeaderCollection
    GetKey
    (System.String System.Int32))
  (define-method-port
    remove
    System.Net.WebHeaderCollection
    Remove
    (System.Void System.Net.HttpResponseHeader)
    (System.Void System.Net.HttpRequestHeader)
    (System.Void System.String))
  (define-field-port
    all-keys
    #f
    #f
    (property:)
    System.Net.WebHeaderCollection
    AllKeys
    System.String[])
  (define-field-port
    count
    #f
    #f
    (property:)
    System.Net.WebHeaderCollection
    Count
    System.Int32)
  (define-field-port
    keys
    #f
    #f
    (property:)
    System.Net.WebHeaderCollection
    Keys
    System.Collections.Specialized.NameObjectCollectionBase+KeysCollection)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Net.WebHeaderCollection
    Item
    System.String)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.Net.WebHeaderCollection
    Item
    System.String))
