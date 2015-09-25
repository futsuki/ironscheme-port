(library (system xml serialization xml-type-map-member-element)
  (export new
          is?
          xml-type-map-member-element?
          find-element
          set-choice
          element-info-get
          element-info-set!
          element-info-update!
          choice-member-get
          choice-member-set!
          choice-member-update!
          choice-type-data-get
          choice-type-data-set!
          choice-type-data-update!
          is-xml-text-collector?-get
          is-xml-text-collector?-set!
          is-xml-text-collector?-update!
          requires-nullable?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.XmlTypeMapMemberElement
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.XmlTypeMapMemberElement a))
  (define (xml-type-map-member-element? a)
    (clr-is System.Xml.Serialization.XmlTypeMapMemberElement a))
  (define-method-port
    find-element
    System.Xml.Serialization.XmlTypeMapMemberElement
    FindElement
    (System.Xml.Serialization.XmlTypeMapElementInfo
      System.Object
      System.Object))
  (define-method-port
    set-choice
    System.Xml.Serialization.XmlTypeMapMemberElement
    SetChoice
    (System.Void System.Object System.Object))
  (define-field-port
    element-info-get
    element-info-set!
    element-info-update!
    (property:)
    System.Xml.Serialization.XmlTypeMapMemberElement
    ElementInfo
    System.Xml.Serialization.XmlTypeMapElementInfoList)
  (define-field-port
    choice-member-get
    choice-member-set!
    choice-member-update!
    (property:)
    System.Xml.Serialization.XmlTypeMapMemberElement
    ChoiceMember
    System.String)
  (define-field-port
    choice-type-data-get
    choice-type-data-set!
    choice-type-data-update!
    (property:)
    System.Xml.Serialization.XmlTypeMapMemberElement
    ChoiceTypeData
    System.Xml.Serialization.TypeData)
  (define-field-port
    is-xml-text-collector?-get
    is-xml-text-collector?-set!
    is-xml-text-collector?-update!
    (property:)
    System.Xml.Serialization.XmlTypeMapMemberElement
    IsXmlTextCollector
    System.Boolean)
  (define-field-port
    requires-nullable?
    #f
    #f
    (property:)
    System.Xml.Serialization.XmlTypeMapMemberElement
    RequiresNullable
    System.Boolean))
