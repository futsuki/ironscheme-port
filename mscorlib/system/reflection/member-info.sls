(library (system reflection member-info)
  (export is?
          member-info?
          is-defined?
          get-custom-attributes
          declaring-type
          member-type
          name
          reflected-type
          module
          metadata-token)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Reflection.MemberInfo a))
  (define (member-info? a) (clr-is System.Reflection.MemberInfo a))
  (define-method-port
    is-defined?
    System.Reflection.MemberInfo
    IsDefined
    (System.Boolean System.Type System.Boolean))
  (define-method-port
    get-custom-attributes
    System.Reflection.MemberInfo
    GetCustomAttributes
    (System.Object[] System.Type System.Boolean)
    (System.Object[] System.Boolean))
  (define-field-port
    declaring-type
    #f
    #f
    (property:)
    System.Reflection.MemberInfo
    DeclaringType
    System.Type)
  (define-field-port
    member-type
    #f
    #f
    (property:)
    System.Reflection.MemberInfo
    MemberType
    System.Reflection.MemberTypes)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Reflection.MemberInfo
    Name
    System.String)
  (define-field-port
    reflected-type
    #f
    #f
    (property:)
    System.Reflection.MemberInfo
    ReflectedType
    System.Type)
  (define-field-port
    module
    #f
    #f
    (property:)
    System.Reflection.MemberInfo
    Module
    System.Reflection.Module)
  (define-field-port
    metadata-token
    #f
    #f
    (property:)
    System.Reflection.MemberInfo
    MetadataToken
    System.Int32))
