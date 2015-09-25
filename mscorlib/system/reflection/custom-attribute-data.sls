(library (system reflection custom-attribute-data)
  (export is?
          custom-attribute-data?
          get-hash-code
          equals?
          get-custom-attributes
          to-string
          constructor
          constructor-arguments
          named-arguments)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Reflection.CustomAttributeData a))
  (define (custom-attribute-data? a)
    (clr-is System.Reflection.CustomAttributeData a))
  (define-method-port
    get-hash-code
    System.Reflection.CustomAttributeData
    GetHashCode
    (System.Int32))
  (define-method-port
    equals?
    System.Reflection.CustomAttributeData
    Equals
    (System.Boolean System.Object))
  (define-method-port
    get-custom-attributes
    System.Reflection.CustomAttributeData
    GetCustomAttributes
    (static:
      "System.Collections.Generic.IList`1[[System.Reflection.CustomAttributeData, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"
      System.Reflection.ParameterInfo)
    (static:
      "System.Collections.Generic.IList`1[[System.Reflection.CustomAttributeData, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"
      System.Reflection.Module)
    (static:
      "System.Collections.Generic.IList`1[[System.Reflection.CustomAttributeData, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"
      System.Reflection.MemberInfo)
    (static:
      "System.Collections.Generic.IList`1[[System.Reflection.CustomAttributeData, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"
      System.Reflection.Assembly))
  (define-method-port
    to-string
    System.Reflection.CustomAttributeData
    ToString
    (System.String))
  (define-field-port
    constructor
    #f
    #f
    (property:)
    System.Reflection.CustomAttributeData
    Constructor
    System.Reflection.ConstructorInfo)
  (define-field-port
    constructor-arguments
    #f
    #f
    (property:)
    System.Reflection.CustomAttributeData
    ConstructorArguments
    "System.Collections.Generic.IList`1[[System.Reflection.CustomAttributeTypedArgument, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]")
  (define-field-port
    named-arguments
    #f
    #f
    (property:)
    System.Reflection.CustomAttributeData
    NamedArguments
    "System.Collections.Generic.IList`1[[System.Reflection.CustomAttributeNamedArgument, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"))
