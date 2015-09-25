(library (system xml serialization map-code-generator)
  (export new
          is?
          map-code-generator?
          export-type-mapping
          add-array-attributes
          export-members-mapping
          add-attribute-member-attributes
          get-type-arg
          get-arg
          add-array-item-attributes
          add-element-member-attributes
          add-custom-attribute
          add-comments
          get-enum-arg
          include-metadata)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Serialization.MapCodeGenerator a ...)))))
  (define (is? a) (clr-is System.Xml.Serialization.MapCodeGenerator a))
  (define (map-code-generator? a)
    (clr-is System.Xml.Serialization.MapCodeGenerator a))
  (define-method-port
    export-type-mapping
    System.Xml.Serialization.MapCodeGenerator
    ExportTypeMapping
    (System.Void
      System.Xml.Serialization.XmlTypeMapping
      System.Boolean))
  (define-method-port
    add-array-attributes
    System.Xml.Serialization.MapCodeGenerator
    AddArrayAttributes
    (System.Void
      System.CodeDom.CodeAttributeDeclarationCollection
      System.Xml.Serialization.XmlTypeMapMemberElement
      System.String
      System.Boolean))
  (define-method-port
    export-members-mapping
    System.Xml.Serialization.MapCodeGenerator
    ExportMembersMapping
    (System.Void System.Xml.Serialization.XmlMembersMapping))
  (define-method-port
    add-attribute-member-attributes
    System.Xml.Serialization.MapCodeGenerator
    AddAttributeMemberAttributes
    (System.Void
      System.Xml.Serialization.XmlTypeMapMemberAttribute
      System.String
      System.CodeDom.CodeAttributeDeclarationCollection
      System.Boolean))
  (define-method-port
    get-type-arg
    System.Xml.Serialization.MapCodeGenerator
    GetTypeArg
    (static:
      System.CodeDom.CodeAttributeArgument
      System.String
      System.String))
  (define-method-port
    get-arg
    System.Xml.Serialization.MapCodeGenerator
    GetArg
    (static: System.CodeDom.CodeAttributeArgument System.Object)
    (static:
      System.CodeDom.CodeAttributeArgument
      System.String
      System.Object))
  (define-method-port
    add-array-item-attributes
    System.Xml.Serialization.MapCodeGenerator
    AddArrayItemAttributes
    (System.Void
      System.CodeDom.CodeAttributeDeclarationCollection
      System.Xml.Serialization.ListMap
      System.Xml.Serialization.TypeData
      System.String
      System.Int32))
  (define-method-port
    add-element-member-attributes
    System.Xml.Serialization.MapCodeGenerator
    AddElementMemberAttributes
    (System.Void
      System.Xml.Serialization.XmlTypeMapMemberElement
      System.String
      System.CodeDom.CodeAttributeDeclarationCollection
      System.Boolean))
  (define-method-port
    add-custom-attribute
    System.Xml.Serialization.MapCodeGenerator
    AddCustomAttribute
    (static:
      System.Void
      System.CodeDom.CodeTypeMember
      System.String
      System.CodeDom.CodeAttributeArgument[])
    (static:
      System.Void
      System.CodeDom.CodeTypeMember
      System.CodeDom.CodeAttributeDeclaration
      System.Boolean))
  (define-method-port
    add-comments
    System.Xml.Serialization.MapCodeGenerator
    AddComments
    (static: System.Void System.CodeDom.CodeTypeMember System.String))
  (define-method-port
    get-enum-arg
    System.Xml.Serialization.MapCodeGenerator
    GetEnumArg
    (static:
      System.CodeDom.CodeAttributeArgument
      System.String
      System.String
      System.String))
  (define-field-port
    include-metadata
    #f
    #f
    (property:)
    System.Xml.Serialization.MapCodeGenerator
    IncludeMetadata
    System.CodeDom.CodeAttributeDeclarationCollection))
