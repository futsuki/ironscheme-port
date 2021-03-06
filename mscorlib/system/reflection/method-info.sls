(library (system reflection method-info)
  (export is?
          method-info?
          get-generic-method-definition
          get-generic-arguments
          get-base-definition
          make-generic-method
          member-type
          return-type
          return-type-custom-attributes
          is-generic-method?
          is-generic-method-definition?
          contains-generic-parameters?
          return-parameter)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Reflection.MethodInfo a))
  (define (method-info? a) (clr-is System.Reflection.MethodInfo a))
  (define-method-port
    get-generic-method-definition
    System.Reflection.MethodInfo
    GetGenericMethodDefinition
    (System.Reflection.MethodInfo))
  (define-method-port
    get-generic-arguments
    System.Reflection.MethodInfo
    GetGenericArguments
    (System.Type[]))
  (define-method-port
    get-base-definition
    System.Reflection.MethodInfo
    GetBaseDefinition
    (System.Reflection.MethodInfo))
  (define-method-port
    make-generic-method
    System.Reflection.MethodInfo
    MakeGenericMethod
    (System.Reflection.MethodInfo System.Type[]))
  (define-field-port
    member-type
    #f
    #f
    (property:)
    System.Reflection.MethodInfo
    MemberType
    System.Reflection.MemberTypes)
  (define-field-port
    return-type
    #f
    #f
    (property:)
    System.Reflection.MethodInfo
    ReturnType
    System.Type)
  (define-field-port
    return-type-custom-attributes
    #f
    #f
    (property:)
    System.Reflection.MethodInfo
    ReturnTypeCustomAttributes
    System.Reflection.ICustomAttributeProvider)
  (define-field-port
    is-generic-method?
    #f
    #f
    (property:)
    System.Reflection.MethodInfo
    IsGenericMethod
    System.Boolean)
  (define-field-port
    is-generic-method-definition?
    #f
    #f
    (property:)
    System.Reflection.MethodInfo
    IsGenericMethodDefinition
    System.Boolean)
  (define-field-port
    contains-generic-parameters?
    #f
    #f
    (property:)
    System.Reflection.MethodInfo
    ContainsGenericParameters
    System.Boolean)
  (define-field-port
    return-parameter
    #f
    #f
    (property:)
    System.Reflection.MethodInfo
    ReturnParameter
    System.Reflection.ParameterInfo))
