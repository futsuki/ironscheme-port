(library (simple-json simple-json)
  (export is?
          simple-json?
          serialize-object
          deserialize-object
          try-deserialize-object?
          escape-to-javascript-string
          current-json-serializer-strategy-get
          current-json-serializer-strategy-set!
          current-json-serializer-strategy-update!
          poco-json-serializer-strategy)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is SimpleJson.SimpleJson a))
  (define (simple-json? a) (clr-is SimpleJson.SimpleJson a))
  (define-method-port
    serialize-object
    SimpleJson.SimpleJson
    SerializeObject
    (static: System.String System.Object)
    (static:
      System.String
      System.Object
      SimpleJson.IJsonSerializerStrategy))
  (define-method-port
    deserialize-object
    SimpleJson.SimpleJson
    DeserializeObject
    (static: System.Object System.String System.Type)
    (static:
      System.Object
      System.String
      System.Type
      SimpleJson.IJsonSerializerStrategy)
    (static: System.Object System.String))
  (define-method-port
    try-deserialize-object?
    SimpleJson.SimpleJson
    TryDeserializeObject
    (static: System.Boolean System.String System.Object&))
  (define-method-port
    escape-to-javascript-string
    SimpleJson.SimpleJson
    EscapeToJavascriptString
    (static: System.String System.String))
  (define-field-port
    current-json-serializer-strategy-get
    current-json-serializer-strategy-set!
    current-json-serializer-strategy-update!
    (static: property:)
    SimpleJson.SimpleJson
    CurrentJsonSerializerStrategy
    SimpleJson.IJsonSerializerStrategy)
  (define-field-port
    poco-json-serializer-strategy
    #f
    #f
    (static: property:)
    SimpleJson.SimpleJson
    PocoJsonSerializerStrategy
    SimpleJson.PocoJsonSerializerStrategy))
