(library (system
          component-model
          design
          serialization
          root-designer-serializer-attribute)
  (export new
          is?
          root-designer-serializer-attribute?
          reloadable?
          serializer-base-type-name
          serializer-type-name
          type-id)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.Design.Serialization.RootDesignerSerializerAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.ComponentModel.Design.Serialization.RootDesignerSerializerAttribute
      a))
  (define (root-designer-serializer-attribute? a)
    (clr-is
      System.ComponentModel.Design.Serialization.RootDesignerSerializerAttribute
      a))
  (define-field-port
    reloadable?
    #f
    #f
    (property:)
    System.ComponentModel.Design.Serialization.RootDesignerSerializerAttribute
    Reloadable
    System.Boolean)
  (define-field-port
    serializer-base-type-name
    #f
    #f
    (property:)
    System.ComponentModel.Design.Serialization.RootDesignerSerializerAttribute
    SerializerBaseTypeName
    System.String)
  (define-field-port
    serializer-type-name
    #f
    #f
    (property:)
    System.ComponentModel.Design.Serialization.RootDesignerSerializerAttribute
    SerializerTypeName
    System.String)
  (define-field-port
    type-id
    #f
    #f
    (property:)
    System.ComponentModel.Design.Serialization.RootDesignerSerializerAttribute
    TypeId
    System.Object))
