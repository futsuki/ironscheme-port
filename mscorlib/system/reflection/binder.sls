(library (system reflection binder)
  (export is?
          binder?
          bind-to-field
          change-type
          select-method
          bind-to-method
          select-property
          reorder-argument-array)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Reflection.Binder a))
  (define (binder? a) (clr-is System.Reflection.Binder a))
  (define-method-port
    bind-to-field
    System.Reflection.Binder
    BindToField
    (System.Reflection.FieldInfo
      System.Reflection.BindingFlags
      System.Reflection.FieldInfo[]
      System.Object
      System.Globalization.CultureInfo))
  (define-method-port
    change-type
    System.Reflection.Binder
    ChangeType
    (System.Object
      System.Object
      System.Type
      System.Globalization.CultureInfo))
  (define-method-port
    select-method
    System.Reflection.Binder
    SelectMethod
    (System.Reflection.MethodBase
      System.Reflection.BindingFlags
      System.Reflection.MethodBase[]
      System.Type[]
      System.Reflection.ParameterModifier[]))
  (define-method-port
    bind-to-method
    System.Reflection.Binder
    BindToMethod
    (System.Reflection.MethodBase
      System.Reflection.BindingFlags
      System.Reflection.MethodBase[]
      System.Object[]&
      System.Reflection.ParameterModifier[]
      System.Globalization.CultureInfo
      System.String[]
      System.Object&))
  (define-method-port
    select-property
    System.Reflection.Binder
    SelectProperty
    (System.Reflection.PropertyInfo
      System.Reflection.BindingFlags
      System.Reflection.PropertyInfo[]
      System.Type
      System.Type[]
      System.Reflection.ParameterModifier[]))
  (define-method-port
    reorder-argument-array
    System.Reflection.Binder
    ReorderArgumentArray
    (System.Void System.Object[]& System.Object)))
