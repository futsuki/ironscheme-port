(library (system data data-relation-property-descriptor)
  (export is?
          data-relation-property-descriptor?
          get-hash-code
          should-serialize-value?
          reset-value
          set-value
          get-value
          can-reset-value?
          equals?
          component-type
          is-read-only?
          property-type
          relation)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.DataRelationPropertyDescriptor a))
  (define (data-relation-property-descriptor? a)
    (clr-is System.Data.DataRelationPropertyDescriptor a))
  (define-method-port
    get-hash-code
    System.Data.DataRelationPropertyDescriptor
    GetHashCode
    (System.Int32))
  (define-method-port
    should-serialize-value?
    System.Data.DataRelationPropertyDescriptor
    ShouldSerializeValue
    (System.Boolean System.Object))
  (define-method-port
    reset-value
    System.Data.DataRelationPropertyDescriptor
    ResetValue
    (System.Void System.Object))
  (define-method-port
    set-value
    System.Data.DataRelationPropertyDescriptor
    SetValue
    (System.Void System.Object System.Object))
  (define-method-port
    get-value
    System.Data.DataRelationPropertyDescriptor
    GetValue
    (System.Object System.Object))
  (define-method-port
    can-reset-value?
    System.Data.DataRelationPropertyDescriptor
    CanResetValue
    (System.Boolean System.Object))
  (define-method-port
    equals?
    System.Data.DataRelationPropertyDescriptor
    Equals
    (System.Boolean System.Object))
  (define-field-port
    component-type
    #f
    #f
    (property:)
    System.Data.DataRelationPropertyDescriptor
    ComponentType
    System.Type)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Data.DataRelationPropertyDescriptor
    IsReadOnly
    System.Boolean)
  (define-field-port
    property-type
    #f
    #f
    (property:)
    System.Data.DataRelationPropertyDescriptor
    PropertyType
    System.Type)
  (define-field-port
    relation
    #f
    #f
    (property:)
    System.Data.DataRelationPropertyDescriptor
    Relation
    System.Data.DataRelation))
