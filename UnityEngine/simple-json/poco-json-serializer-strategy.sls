(library (simple-json poco-json-serializer-strategy)
  (export new
          is?
          poco-json-serializer-strategy?
          try-serialize-non-primitive-object?
          deserialize-object)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new SimpleJson.PocoJsonSerializerStrategy a ...)))))
  (define (is? a) (clr-is SimpleJson.PocoJsonSerializerStrategy a))
  (define (poco-json-serializer-strategy? a)
    (clr-is SimpleJson.PocoJsonSerializerStrategy a))
  (define-method-port
    try-serialize-non-primitive-object?
    SimpleJson.PocoJsonSerializerStrategy
    TrySerializeNonPrimitiveObject
    (System.Boolean System.Object System.Object&))
  (define-method-port
    deserialize-object
    SimpleJson.PocoJsonSerializerStrategy
    DeserializeObject
    (System.Object System.Object System.Type)))
