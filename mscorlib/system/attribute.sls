(library (system attribute)
  (export is?
          attribute?
          get-custom-attribute
          get-hash-code
          is-default-attribute?
          is-defined?
          get-custom-attributes
          match?
          equals?
          type-id)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Attribute a))
  (define (attribute? a) (clr-is System.Attribute a))
  (define-method-port
    get-custom-attribute
    System.Attribute
    GetCustomAttribute
    (static:
      System.Attribute
      System.Reflection.MemberInfo
      System.Type
      System.Boolean)
    (static:
      System.Attribute
      System.Reflection.ParameterInfo
      System.Type
      System.Boolean)
    (static:
      System.Attribute
      System.Reflection.Assembly
      System.Type
      System.Boolean)
    (static:
      System.Attribute
      System.Reflection.Module
      System.Type
      System.Boolean)
    (static: System.Attribute System.Reflection.Module System.Type)
    (static: System.Attribute System.Reflection.Assembly System.Type)
    (static: System.Attribute System.Reflection.MemberInfo System.Type)
    (static:
      System.Attribute
      System.Reflection.ParameterInfo
      System.Type))
  (define-method-port
    get-hash-code
    System.Attribute
    GetHashCode
    (System.Int32))
  (define-method-port
    is-default-attribute?
    System.Attribute
    IsDefaultAttribute
    (System.Boolean))
  (define-method-port
    is-defined?
    System.Attribute
    IsDefined
    (static:
      System.Boolean
      System.Reflection.ParameterInfo
      System.Type
      System.Boolean)
    (static:
      System.Boolean
      System.Reflection.Module
      System.Type
      System.Boolean)
    (static:
      System.Boolean
      System.Reflection.Assembly
      System.Type
      System.Boolean)
    (static:
      System.Boolean
      System.Reflection.MemberInfo
      System.Type
      System.Boolean)
    (static: System.Boolean System.Reflection.Assembly System.Type)
    (static: System.Boolean System.Reflection.MemberInfo System.Type)
    (static: System.Boolean System.Reflection.ParameterInfo System.Type)
    (static: System.Boolean System.Reflection.Module System.Type))
  (define-method-port
    get-custom-attributes
    System.Attribute
    GetCustomAttributes
    (static:
      System.Attribute[]
      System.Reflection.ParameterInfo
      System.Boolean)
    (static:
      System.Attribute[]
      System.Reflection.MemberInfo
      System.Boolean)
    (static:
      System.Attribute[]
      System.Reflection.Assembly
      System.Boolean)
    (static: System.Attribute[] System.Reflection.Module System.Boolean)
    (static:
      System.Attribute[]
      System.Reflection.MemberInfo
      System.Type
      System.Boolean)
    (static:
      System.Attribute[]
      System.Reflection.Module
      System.Type
      System.Boolean)
    (static:
      System.Attribute[]
      System.Reflection.ParameterInfo
      System.Type
      System.Boolean)
    (static:
      System.Attribute[]
      System.Reflection.Assembly
      System.Type
      System.Boolean)
    (static:
      System.Attribute[]
      System.Reflection.MemberInfo
      System.Type)
    (static:
      System.Attribute[]
      System.Reflection.ParameterInfo
      System.Type)
    (static: System.Attribute[] System.Reflection.Module System.Type)
    (static: System.Attribute[] System.Reflection.Assembly System.Type)
    (static: System.Attribute[] System.Reflection.Module)
    (static: System.Attribute[] System.Reflection.MemberInfo)
    (static: System.Attribute[] System.Reflection.ParameterInfo)
    (static: System.Attribute[] System.Reflection.Assembly))
  (define-method-port
    match?
    System.Attribute
    Match
    (System.Boolean System.Object))
  (define-method-port
    equals?
    System.Attribute
    Equals
    (System.Boolean System.Object))
  (define-field-port
    type-id
    #f
    #f
    (property:)
    System.Attribute
    TypeId
    System.Object))
