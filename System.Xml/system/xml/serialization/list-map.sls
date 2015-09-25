(library (system xml serialization list-map)
  (export new
          is?
          list-map?
          get-hash-code
          find-element
          get-array-type
          get-schema-array-name
          find-text-element
          equals?
          is-multi-array?
          choice-member-get
          choice-member-set!
          choice-member-update!
          nested-array-mapping
          item-info-get
          item-info-set!
          item-info-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Serialization.ListMap a ...)))))
  (define (is? a) (clr-is System.Xml.Serialization.ListMap a))
  (define (list-map? a) (clr-is System.Xml.Serialization.ListMap a))
  (define-method-port
    get-hash-code
    System.Xml.Serialization.ListMap
    GetHashCode
    (System.Int32))
  (define-method-port
    find-element
    System.Xml.Serialization.ListMap
    FindElement
    (System.Xml.Serialization.XmlTypeMapElementInfo
      System.String
      System.String)
    (System.Xml.Serialization.XmlTypeMapElementInfo
      System.Object
      System.Int32
      System.Object))
  (define-method-port
    get-array-type
    System.Xml.Serialization.ListMap
    GetArrayType
    (System.Void System.Int32 System.String& System.String&))
  (define-method-port
    get-schema-array-name
    System.Xml.Serialization.ListMap
    GetSchemaArrayName
    (System.String))
  (define-method-port
    find-text-element
    System.Xml.Serialization.ListMap
    FindTextElement
    (System.Xml.Serialization.XmlTypeMapElementInfo))
  (define-method-port
    equals?
    System.Xml.Serialization.ListMap
    Equals
    (System.Boolean System.Object))
  (define-field-port
    is-multi-array?
    #f
    #f
    (property:)
    System.Xml.Serialization.ListMap
    IsMultiArray
    System.Boolean)
  (define-field-port
    choice-member-get
    choice-member-set!
    choice-member-update!
    (property:)
    System.Xml.Serialization.ListMap
    ChoiceMember
    System.String)
  (define-field-port
    nested-array-mapping
    #f
    #f
    (property:)
    System.Xml.Serialization.ListMap
    NestedArrayMapping
    System.Xml.Serialization.XmlTypeMapping)
  (define-field-port
    item-info-get
    item-info-set!
    item-info-update!
    (property:)
    System.Xml.Serialization.ListMap
    ItemInfo
    System.Xml.Serialization.XmlTypeMapElementInfoList))
