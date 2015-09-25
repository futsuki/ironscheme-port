(library (system xml serialization reflection-helper)
  (export new
          is?
          reflection-helper?
          register-clr-type
          register-schema-type
          get-registered-schema-type
          create-error
          get-registered-clr-type
          check-serializable-type
          build-map-key)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Serialization.ReflectionHelper a ...)))))
  (define (is? a) (clr-is System.Xml.Serialization.ReflectionHelper a))
  (define (reflection-helper? a)
    (clr-is System.Xml.Serialization.ReflectionHelper a))
  (define-method-port
    register-clr-type
    System.Xml.Serialization.ReflectionHelper
    RegisterClrType
    (System.Void
      System.Xml.Serialization.XmlTypeMapping
      System.Type
      System.String))
  (define-method-port
    register-schema-type
    System.Xml.Serialization.ReflectionHelper
    RegisterSchemaType
    (System.Void
      System.Xml.Serialization.XmlTypeMapping
      System.String
      System.String))
  (define-method-port
    get-registered-schema-type
    System.Xml.Serialization.ReflectionHelper
    GetRegisteredSchemaType
    (System.Xml.Serialization.XmlTypeMapping
      System.String
      System.String))
  (define-method-port
    create-error
    System.Xml.Serialization.ReflectionHelper
    CreateError
    (System.Exception
      System.Xml.Serialization.XmlTypeMapping
      System.String))
  (define-method-port
    get-registered-clr-type
    System.Xml.Serialization.ReflectionHelper
    GetRegisteredClrType
    (System.Xml.Serialization.XmlTypeMapping System.Type System.String))
  (define-method-port
    check-serializable-type
    System.Xml.Serialization.ReflectionHelper
    CheckSerializableType
    (static: System.Void System.Type System.Boolean))
  (define-method-port
    build-map-key
    System.Xml.Serialization.ReflectionHelper
    BuildMapKey
    (static: System.String System.Reflection.MethodInfo System.String)
    (static: System.String System.Type)))
