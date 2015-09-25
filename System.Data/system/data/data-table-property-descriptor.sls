(library (system data data-table-property-descriptor)
  (export is?
          data-table-property-descriptor?
          get-hash-code
          should-serialize-value?
          reset-value
          set-value
          get-value
          can-reset-value?
          equals?
          table
          is-read-only?
          component-type
          property-type)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Data.DataTablePropertyDescriptor a))
  (define (data-table-property-descriptor? a)
    (clr-is System.Data.DataTablePropertyDescriptor a))
  (define-method-port
    get-hash-code
    System.Data.DataTablePropertyDescriptor
    GetHashCode
    (System.Int32))
  (define-method-port
    should-serialize-value?
    System.Data.DataTablePropertyDescriptor
    ShouldSerializeValue
    (System.Boolean System.Object))
  (define-method-port
    reset-value
    System.Data.DataTablePropertyDescriptor
    ResetValue
    (System.Void System.Object))
  (define-method-port
    set-value
    System.Data.DataTablePropertyDescriptor
    SetValue
    (System.Void System.Object System.Object))
  (define-method-port
    get-value
    System.Data.DataTablePropertyDescriptor
    GetValue
    (System.Object System.Object))
  (define-method-port
    can-reset-value?
    System.Data.DataTablePropertyDescriptor
    CanResetValue
    (System.Boolean System.Object))
  (define-method-port
    equals?
    System.Data.DataTablePropertyDescriptor
    Equals
    (System.Boolean System.Object))
  (define-field-port
    table
    #f
    #f
    (property:)
    System.Data.DataTablePropertyDescriptor
    Table
    System.Data.DataTable)
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Data.DataTablePropertyDescriptor
    IsReadOnly
    System.Boolean)
  (define-field-port
    component-type
    #f
    #f
    (property:)
    System.Data.DataTablePropertyDescriptor
    ComponentType
    System.Type)
  (define-field-port
    property-type
    #f
    #f
    (property:)
    System.Data.DataTablePropertyDescriptor
    PropertyType
    System.Type))
