(library (simple-json reflection reflection-utils)
  (export new
          is?
          reflection-utils?
          is-value-type?
          get-contructor
          get-getter-method-info
          get-constructor-info
          get-properties
          is-type-dictionary?
          get-set-method-by-reflection
          get-setter-method-info
          to-nullable-type
          get-constructors
          get-constructor-by-reflection
          get-attribute
          is-nullable-type?
          get-get-method-by-reflection
          get-fields
          get-get-method
          get-set-method
          get-generic-type-arguments
          is-assignable-from?
          is-type-generice-collection-interface?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new SimpleJson.Reflection.ReflectionUtils a ...)))))
  (define (is? a) (clr-is SimpleJson.Reflection.ReflectionUtils a))
  (define (reflection-utils? a)
    (clr-is SimpleJson.Reflection.ReflectionUtils a))
  (define-method-port
    is-value-type?
    SimpleJson.Reflection.ReflectionUtils
    IsValueType
    (static: System.Boolean System.Type))
  (define-method-port
    get-contructor
    SimpleJson.Reflection.ReflectionUtils
    GetContructor
    (static:
      SimpleJson.Reflection.ReflectionUtils+ConstructorDelegate
      System.Type
      System.Type[])
    (static:
      SimpleJson.Reflection.ReflectionUtils+ConstructorDelegate
      System.Reflection.ConstructorInfo))
  (define-method-port
    get-getter-method-info
    SimpleJson.Reflection.ReflectionUtils
    GetGetterMethodInfo
    (static:
      System.Reflection.MethodInfo
      System.Reflection.PropertyInfo))
  (define-method-port
    get-constructor-info
    SimpleJson.Reflection.ReflectionUtils
    GetConstructorInfo
    (static:
      System.Reflection.ConstructorInfo
      System.Type
      System.Type[]))
  (define-method-port
    get-properties
    SimpleJson.Reflection.ReflectionUtils
    GetProperties
    (static:
      "System.Collections.Generic.IEnumerable`1[[System.Reflection.PropertyInfo, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"
      System.Type))
  (define-method-port
    is-type-dictionary?
    SimpleJson.Reflection.ReflectionUtils
    IsTypeDictionary
    (static: System.Boolean System.Type))
  (define-method-port
    get-set-method-by-reflection
    SimpleJson.Reflection.ReflectionUtils
    GetSetMethodByReflection
    (static:
      SimpleJson.Reflection.ReflectionUtils+SetDelegate
      System.Reflection.FieldInfo)
    (static:
      SimpleJson.Reflection.ReflectionUtils+SetDelegate
      System.Reflection.PropertyInfo))
  (define-method-port
    get-setter-method-info
    SimpleJson.Reflection.ReflectionUtils
    GetSetterMethodInfo
    (static:
      System.Reflection.MethodInfo
      System.Reflection.PropertyInfo))
  (define-method-port
    to-nullable-type
    SimpleJson.Reflection.ReflectionUtils
    ToNullableType
    (static: System.Object System.Object System.Type))
  (define-method-port
    get-constructors
    SimpleJson.Reflection.ReflectionUtils
    GetConstructors
    (static:
      "System.Collections.Generic.IEnumerable`1[[System.Reflection.ConstructorInfo, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"
      System.Type))
  (define-method-port
    get-constructor-by-reflection
    SimpleJson.Reflection.ReflectionUtils
    GetConstructorByReflection
    (static:
      SimpleJson.Reflection.ReflectionUtils+ConstructorDelegate
      System.Type
      System.Type[])
    (static:
      SimpleJson.Reflection.ReflectionUtils+ConstructorDelegate
      System.Reflection.ConstructorInfo))
  (define-method-port
    get-attribute
    SimpleJson.Reflection.ReflectionUtils
    GetAttribute
    (static: System.Attribute System.Type System.Type)
    (static: System.Attribute System.Reflection.MemberInfo System.Type))
  (define-method-port
    is-nullable-type?
    SimpleJson.Reflection.ReflectionUtils
    IsNullableType
    (static: System.Boolean System.Type))
  (define-method-port
    get-get-method-by-reflection
    SimpleJson.Reflection.ReflectionUtils
    GetGetMethodByReflection
    (static:
      SimpleJson.Reflection.ReflectionUtils+GetDelegate
      System.Reflection.FieldInfo)
    (static:
      SimpleJson.Reflection.ReflectionUtils+GetDelegate
      System.Reflection.PropertyInfo))
  (define-method-port
    get-fields
    SimpleJson.Reflection.ReflectionUtils
    GetFields
    (static:
      "System.Collections.Generic.IEnumerable`1[[System.Reflection.FieldInfo, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"
      System.Type))
  (define-method-port
    get-get-method
    SimpleJson.Reflection.ReflectionUtils
    GetGetMethod
    (static:
      SimpleJson.Reflection.ReflectionUtils+GetDelegate
      System.Reflection.FieldInfo)
    (static:
      SimpleJson.Reflection.ReflectionUtils+GetDelegate
      System.Reflection.PropertyInfo))
  (define-method-port
    get-set-method
    SimpleJson.Reflection.ReflectionUtils
    GetSetMethod
    (static:
      SimpleJson.Reflection.ReflectionUtils+SetDelegate
      System.Reflection.FieldInfo)
    (static:
      SimpleJson.Reflection.ReflectionUtils+SetDelegate
      System.Reflection.PropertyInfo))
  (define-method-port
    get-generic-type-arguments
    SimpleJson.Reflection.ReflectionUtils
    GetGenericTypeArguments
    (static: System.Type[] System.Type))
  (define-method-port
    is-assignable-from?
    SimpleJson.Reflection.ReflectionUtils
    IsAssignableFrom
    (static: System.Boolean System.Type System.Type))
  (define-method-port
    is-type-generice-collection-interface?
    SimpleJson.Reflection.ReflectionUtils
    IsTypeGenericeCollectionInterface
    (static: System.Boolean System.Type)))
