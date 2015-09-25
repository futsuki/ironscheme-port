(library (simple-json json-object)
  (export new
          is?
          json-object?
          copy-to
          contains-key?
          get-enumerator
          add
          contains?
          remove?
          clear
          to-string
          try-get-value?
          item
          keys
          values
          item-get
          item-set!
          item-update!
          count
          is-read-only?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new SimpleJson.JsonObject a ...)))))
  (define (is? a) (clr-is SimpleJson.JsonObject a))
  (define (json-object? a) (clr-is SimpleJson.JsonObject a))
  (define-method-port
    copy-to
    SimpleJson.JsonObject
    CopyTo
    (System.Void
      "System.Collections.Generic.KeyValuePair`2[[System.String, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089],[System.Object, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]][]"
      System.Int32))
  (define-method-port
    contains-key?
    SimpleJson.JsonObject
    ContainsKey
    (System.Boolean System.String))
  (define-method-port
    get-enumerator
    SimpleJson.JsonObject
    GetEnumerator
    ("System.Collections.Generic.IEnumerator`1[[System.Collections.Generic.KeyValuePair`2[[System.String, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089],[System.Object, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"))
  (define-method-port
    add
    SimpleJson.JsonObject
    Add
    (System.Void System.String System.Object))
  (define-method-port contains? SimpleJson.JsonObject Contains)
  (define-method-port
    remove?
    SimpleJson.JsonObject
    Remove
    (System.Boolean System.String))
  (define-method-port clear SimpleJson.JsonObject Clear (System.Void))
  (define-method-port
    to-string
    SimpleJson.JsonObject
    ToString
    (System.String))
  (define-method-port
    try-get-value?
    SimpleJson.JsonObject
    TryGetValue
    (System.Boolean System.String System.Object&))
  (define-field-port
    item
    #f
    #f
    (property:)
    SimpleJson.JsonObject
    Item
    System.Object)
  (define-field-port
    keys
    #f
    #f
    (property:)
    SimpleJson.JsonObject
    Keys
    "System.Collections.Generic.ICollection`1[[System.String, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]")
  (define-field-port
    values
    #f
    #f
    (property:)
    SimpleJson.JsonObject
    Values
    "System.Collections.Generic.ICollection`1[[System.Object, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]")
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    SimpleJson.JsonObject
    Item
    System.Object)
  (define-field-port
    count
    #f
    #f
    (property:)
    SimpleJson.JsonObject
    Count
    System.Int32)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    SimpleJson.JsonObject
    IsReadOnly
    System.Boolean))
