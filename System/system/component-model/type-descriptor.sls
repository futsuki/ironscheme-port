(library (system component-model type-descriptor)
  (export is?
          type-descriptor?
          get-default-event
          add-attributes
          add-editor-table
          remove-provider
          get-editor
          get-component-name
          remove-associations
          get-provider
          get-properties
          get-converter
          add-provider
          get-attributes
          get-class-name
          create-property
          get-association
          get-events
          create-association
          get-reflection-type
          create-event
          remove-association
          refresh
          create-designer
          sort-descriptor-array
          get-full-component-name
          create-instance
          get-default-property
          com-object-type
          com-native-descriptor-handler-get
          com-native-descriptor-handler-set!
          com-native-descriptor-handler-update!)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.ComponentModel.TypeDescriptor a))
  (define (type-descriptor? a)
    (clr-is System.ComponentModel.TypeDescriptor a))
  (define-method-port
    get-default-event
    System.ComponentModel.TypeDescriptor
    GetDefaultEvent
    (static:
      System.ComponentModel.EventDescriptor
      System.Object
      System.Boolean)
    (static: System.ComponentModel.EventDescriptor System.Object)
    (static: System.ComponentModel.EventDescriptor System.Type))
  (define-method-port
    add-attributes
    System.ComponentModel.TypeDescriptor
    AddAttributes
    (static:
      System.ComponentModel.TypeDescriptionProvider
      System.Type
      System.Attribute[])
    (static:
      System.ComponentModel.TypeDescriptionProvider
      System.Object
      System.Attribute[]))
  (define-method-port
    add-editor-table
    System.ComponentModel.TypeDescriptor
    AddEditorTable
    (static: System.Void System.Type System.Collections.Hashtable))
  (define-method-port
    remove-provider
    System.ComponentModel.TypeDescriptor
    RemoveProvider
    (static:
      System.Void
      System.ComponentModel.TypeDescriptionProvider
      System.Type)
    (static:
      System.Void
      System.ComponentModel.TypeDescriptionProvider
      System.Object))
  (define-method-port
    get-editor
    System.ComponentModel.TypeDescriptor
    GetEditor
    (static: System.Object System.Object System.Type System.Boolean)
    (static: System.Object System.Object System.Type)
    (static: System.Object System.Type System.Type))
  (define-method-port
    get-component-name
    System.ComponentModel.TypeDescriptor
    GetComponentName
    (static: System.String System.Object System.Boolean)
    (static: System.String System.Object))
  (define-method-port
    remove-associations
    System.ComponentModel.TypeDescriptor
    RemoveAssociations
    (static: System.Void System.Object))
  (define-method-port
    get-provider
    System.ComponentModel.TypeDescriptor
    GetProvider
    (static: System.ComponentModel.TypeDescriptionProvider System.Type)
    (static:
      System.ComponentModel.TypeDescriptionProvider
      System.Object))
  (define-method-port
    get-properties
    System.ComponentModel.TypeDescriptor
    GetProperties
    (static:
      System.ComponentModel.PropertyDescriptorCollection
      System.Type
      System.Attribute[])
    (static:
      System.ComponentModel.PropertyDescriptorCollection
      System.Object
      System.Boolean)
    (static:
      System.ComponentModel.PropertyDescriptorCollection
      System.Object
      System.Attribute[]
      System.Boolean)
    (static:
      System.ComponentModel.PropertyDescriptorCollection
      System.Object
      System.Attribute[])
    (static:
      System.ComponentModel.PropertyDescriptorCollection
      System.Type)
    (static:
      System.ComponentModel.PropertyDescriptorCollection
      System.Object))
  (define-method-port
    get-converter
    System.ComponentModel.TypeDescriptor
    GetConverter
    (static: System.ComponentModel.TypeConverter System.Type)
    (static:
      System.ComponentModel.TypeConverter
      System.Object
      System.Boolean)
    (static: System.ComponentModel.TypeConverter System.Object))
  (define-method-port
    add-provider
    System.ComponentModel.TypeDescriptor
    AddProvider
    (static:
      System.Void
      System.ComponentModel.TypeDescriptionProvider
      System.Type)
    (static:
      System.Void
      System.ComponentModel.TypeDescriptionProvider
      System.Object))
  (define-method-port
    get-attributes
    System.ComponentModel.TypeDescriptor
    GetAttributes
    (static:
      System.ComponentModel.AttributeCollection
      System.Object
      System.Boolean)
    (static: System.ComponentModel.AttributeCollection System.Object)
    (static: System.ComponentModel.AttributeCollection System.Type))
  (define-method-port
    get-class-name
    System.ComponentModel.TypeDescriptor
    GetClassName
    (static: System.String System.Type)
    (static: System.String System.Object System.Boolean)
    (static: System.String System.Object))
  (define-method-port
    create-property
    System.ComponentModel.TypeDescriptor
    CreateProperty
    (static:
      System.ComponentModel.PropertyDescriptor
      System.Type
      System.ComponentModel.PropertyDescriptor
      System.Attribute[])
    (static:
      System.ComponentModel.PropertyDescriptor
      System.Type
      System.String
      System.Type
      System.Attribute[]))
  (define-method-port
    get-association
    System.ComponentModel.TypeDescriptor
    GetAssociation
    (static: System.Object System.Type System.Object))
  (define-method-port
    get-events
    System.ComponentModel.TypeDescriptor
    GetEvents
    (static:
      System.ComponentModel.EventDescriptorCollection
      System.Object
      System.Attribute[]
      System.Boolean)
    (static:
      System.ComponentModel.EventDescriptorCollection
      System.Type
      System.Attribute[])
    (static:
      System.ComponentModel.EventDescriptorCollection
      System.Object
      System.Boolean)
    (static:
      System.ComponentModel.EventDescriptorCollection
      System.Object
      System.Attribute[])
    (static:
      System.ComponentModel.EventDescriptorCollection
      System.Type)
    (static:
      System.ComponentModel.EventDescriptorCollection
      System.Object))
  (define-method-port
    create-association
    System.ComponentModel.TypeDescriptor
    CreateAssociation
    (static: System.Void System.Object System.Object))
  (define-method-port
    get-reflection-type
    System.ComponentModel.TypeDescriptor
    GetReflectionType
    (static: System.Type System.Type)
    (static: System.Type System.Object))
  (define-method-port
    create-event
    System.ComponentModel.TypeDescriptor
    CreateEvent
    (static:
      System.ComponentModel.EventDescriptor
      System.Type
      System.ComponentModel.EventDescriptor
      System.Attribute[])
    (static:
      System.ComponentModel.EventDescriptor
      System.Type
      System.String
      System.Type
      System.Attribute[]))
  (define-method-port
    remove-association
    System.ComponentModel.TypeDescriptor
    RemoveAssociation
    (static: System.Void System.Object System.Object))
  (define-method-port
    refresh
    System.ComponentModel.TypeDescriptor
    Refresh
    (static: System.Void System.Type)
    (static: System.Void System.Object)
    (static: System.Void System.Reflection.Module)
    (static: System.Void System.Reflection.Assembly))
  (define-method-port
    create-designer
    System.ComponentModel.TypeDescriptor
    CreateDesigner
    (static:
      System.ComponentModel.Design.IDesigner
      System.ComponentModel.IComponent
      System.Type))
  (define-method-port
    sort-descriptor-array
    System.ComponentModel.TypeDescriptor
    SortDescriptorArray
    (static: System.Void System.Collections.IList))
  (define-method-port
    get-full-component-name
    System.ComponentModel.TypeDescriptor
    GetFullComponentName
    (static: System.String System.Object))
  (define-method-port
    create-instance
    System.ComponentModel.TypeDescriptor
    CreateInstance
    (static:
      System.Object
      System.IServiceProvider
      System.Type
      System.Type[]
      System.Object[]))
  (define-method-port
    get-default-property
    System.ComponentModel.TypeDescriptor
    GetDefaultProperty
    (static:
      System.ComponentModel.PropertyDescriptor
      System.Object
      System.Boolean)
    (static: System.ComponentModel.PropertyDescriptor System.Object)
    (static: System.ComponentModel.PropertyDescriptor System.Type))
  (define-field-port
    com-object-type
    #f
    #f
    (static: property:)
    System.ComponentModel.TypeDescriptor
    ComObjectType
    System.Type)
  (define-field-port
    com-native-descriptor-handler-get
    com-native-descriptor-handler-set!
    com-native-descriptor-handler-update!
    (static: property:)
    System.ComponentModel.TypeDescriptor
    ComNativeDescriptorHandler
    System.ComponentModel.IComNativeDescriptorHandler))
