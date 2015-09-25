(library (system reflection constructor-info)
  (export is?
          constructor-info?
          invoke
          constructor-name
          type-constructor-name
          member-type)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Reflection.ConstructorInfo a))
  (define (constructor-info? a)
    (clr-is System.Reflection.ConstructorInfo a))
  (define-method-port
    invoke
    System.Reflection.ConstructorInfo
    Invoke
    (System.Object
      System.Reflection.BindingFlags
      System.Reflection.Binder
      System.Object[]
      System.Globalization.CultureInfo)
    (System.Object System.Object[]))
  (define-field-port
    constructor-name
    #f
    #f
    (static:)
    System.Reflection.ConstructorInfo
    ConstructorName
    System.String)
  (define-field-port
    type-constructor-name
    #f
    #f
    (static:)
    System.Reflection.ConstructorInfo
    TypeConstructorName
    System.String)
  (define-field-port
    member-type
    #f
    #f
    (property:)
    System.Reflection.ConstructorInfo
    MemberType
    System.Reflection.MemberTypes))
