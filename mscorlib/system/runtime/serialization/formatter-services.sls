(library (system runtime serialization formatter-services)
  (export is?
          formatter-services?
          get-object-data
          get-serializable-members
          get-type-from-assembly
          get-uninitialized-object
          check-type-security
          populate-object-members
          get-safe-uninitialized-object)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Runtime.Serialization.FormatterServices a))
  (define (formatter-services? a)
    (clr-is System.Runtime.Serialization.FormatterServices a))
  (define-method-port
    get-object-data
    System.Runtime.Serialization.FormatterServices
    GetObjectData
    (static:
      System.Object[]
      System.Object
      System.Reflection.MemberInfo[]))
  (define-method-port
    get-serializable-members
    System.Runtime.Serialization.FormatterServices
    GetSerializableMembers
    (static:
      System.Reflection.MemberInfo[]
      System.Type
      System.Runtime.Serialization.StreamingContext)
    (static: System.Reflection.MemberInfo[] System.Type))
  (define-method-port
    get-type-from-assembly
    System.Runtime.Serialization.FormatterServices
    GetTypeFromAssembly
    (static: System.Type System.Reflection.Assembly System.String))
  (define-method-port
    get-uninitialized-object
    System.Runtime.Serialization.FormatterServices
    GetUninitializedObject
    (static: System.Object System.Type))
  (define-method-port
    check-type-security
    System.Runtime.Serialization.FormatterServices
    CheckTypeSecurity
    (static:
      System.Void
      System.Type
      System.Runtime.Serialization.Formatters.TypeFilterLevel))
  (define-method-port
    populate-object-members
    System.Runtime.Serialization.FormatterServices
    PopulateObjectMembers
    (static:
      System.Object
      System.Object
      System.Reflection.MemberInfo[]
      System.Object[]))
  (define-method-port
    get-safe-uninitialized-object
    System.Runtime.Serialization.FormatterServices
    GetSafeUninitializedObject
    (static: System.Object System.Type)))
