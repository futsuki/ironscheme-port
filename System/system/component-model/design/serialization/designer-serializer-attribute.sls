(library (system
          component-model
          design
          serialization
          designer-serializer-attribute)
  (export new
          is?
          designer-serializer-attribute?
          serializer-base-type-name
          serializer-type-name
          type-id)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.Design.Serialization.DesignerSerializerAttribute
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.ComponentModel.Design.Serialization.DesignerSerializerAttribute
      a))
  (define (designer-serializer-attribute? a)
    (clr-is
      System.ComponentModel.Design.Serialization.DesignerSerializerAttribute
      a))
  (define-field-port
    serializer-base-type-name
    #f
    #f
    (property:)
    System.ComponentModel.Design.Serialization.DesignerSerializerAttribute
    SerializerBaseTypeName
    System.String)
  (define-field-port
    serializer-type-name
    #f
    #f
    (property:)
    System.ComponentModel.Design.Serialization.DesignerSerializerAttribute
    SerializerTypeName
    System.String)
  (define-field-port
    type-id
    #f
    #f
    (property:)
    System.ComponentModel.Design.Serialization.DesignerSerializerAttribute
    TypeId
    System.Object))
