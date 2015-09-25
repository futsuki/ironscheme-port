(library (system xml serialization type-translator)
  (export new
          is?
          type-translator?
          get-type-data
          get-default-primitive-type-data
          parse-array-type
          is-default-primitive-tpe-data?
          find-primitive-type-data
          get-array-name
          get-primitive-type-data
          create-custom-type
          is-primitive?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Serialization.TypeTranslator a ...)))))
  (define (is? a) (clr-is System.Xml.Serialization.TypeTranslator a))
  (define (type-translator? a)
    (clr-is System.Xml.Serialization.TypeTranslator a))
  (define-method-port
    get-type-data
    System.Xml.Serialization.TypeTranslator
    GetTypeData
    (static:
      System.Xml.Serialization.TypeData
      System.Type
      System.String)
    (static: System.Xml.Serialization.TypeData System.Type))
  (define-method-port
    get-default-primitive-type-data
    System.Xml.Serialization.TypeTranslator
    GetDefaultPrimitiveTypeData
    (static:
      System.Xml.Serialization.TypeData
      System.Xml.Serialization.TypeData))
  (define-method-port
    parse-array-type
    System.Xml.Serialization.TypeTranslator
    ParseArrayType
    (static:
      System.Void
      System.String
      System.String&
      System.String&
      System.String&))
  (define-method-port
    is-default-primitive-tpe-data?
    System.Xml.Serialization.TypeTranslator
    IsDefaultPrimitiveTpeData
    (static: System.Boolean System.Xml.Serialization.TypeData))
  (define-method-port
    find-primitive-type-data
    System.Xml.Serialization.TypeTranslator
    FindPrimitiveTypeData
    (static: System.Xml.Serialization.TypeData System.String))
  (define-method-port
    get-array-name
    System.Xml.Serialization.TypeTranslator
    GetArrayName
    (static: System.String System.String System.Int32)
    (static: System.String System.String))
  (define-method-port
    get-primitive-type-data
    System.Xml.Serialization.TypeTranslator
    GetPrimitiveTypeData
    (static:
      System.Xml.Serialization.TypeData
      System.String
      System.Boolean)
    (static: System.Xml.Serialization.TypeData System.String))
  (define-method-port
    create-custom-type
    System.Xml.Serialization.TypeTranslator
    CreateCustomType
    (static:
      System.Xml.Serialization.TypeData
      System.String
      System.String
      System.String
      System.Xml.Serialization.SchemaTypes
      System.Xml.Serialization.TypeData))
  (define-method-port
    is-primitive?
    System.Xml.Serialization.TypeTranslator
    IsPrimitive
    (static: System.Boolean System.Type)))
