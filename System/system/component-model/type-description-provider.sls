(library (system component-model type-description-provider)
  (export is?
          type-description-provider?
          get-extended-type-descriptor
          get-cache
          get-reflection-type
          get-full-component-name
          get-type-descriptor
          create-instance)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.ComponentModel.TypeDescriptionProvider a))
  (define (type-description-provider? a)
    (clr-is System.ComponentModel.TypeDescriptionProvider a))
  (define-method-port
    get-extended-type-descriptor
    System.ComponentModel.TypeDescriptionProvider
    GetExtendedTypeDescriptor
    (System.ComponentModel.ICustomTypeDescriptor System.Object))
  (define-method-port
    get-cache
    System.ComponentModel.TypeDescriptionProvider
    GetCache
    (System.Collections.IDictionary System.Object))
  (define-method-port
    get-reflection-type
    System.ComponentModel.TypeDescriptionProvider
    GetReflectionType
    (System.Type System.Type System.Object)
    (System.Type System.Type)
    (System.Type System.Object))
  (define-method-port
    get-full-component-name
    System.ComponentModel.TypeDescriptionProvider
    GetFullComponentName
    (System.String System.Object))
  (define-method-port
    get-type-descriptor
    System.ComponentModel.TypeDescriptionProvider
    GetTypeDescriptor
    (System.ComponentModel.ICustomTypeDescriptor
      System.Type
      System.Object)
    (System.ComponentModel.ICustomTypeDescriptor System.Type)
    (System.ComponentModel.ICustomTypeDescriptor System.Object))
  (define-method-port
    create-instance
    System.ComponentModel.TypeDescriptionProvider
    CreateInstance
    (System.Object
      System.IServiceProvider
      System.Type
      System.Type[]
      System.Object[])))
