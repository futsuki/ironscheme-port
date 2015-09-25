(library (system linq expressions extensions)
  (export is?
          extensions?
          is-generic-implementation-of?
          is-assignable-to?
          get-not-nullable-type
          make-nullable-type
          on-field-or-property
          get-invoke-method
          is-generic-instance-of?
          make-generic-method-from
          make-generic-type-from
          is-expression?
          get-first-generic-argument
          is-nullable?
          get-parameter-types
          make-strong-box-type)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Linq.Expressions.Extensions a))
  (define (extensions? a) (clr-is System.Linq.Expressions.Extensions a))
  (define-method-port
    is-generic-implementation-of?
    System.Linq.Expressions.Extensions
    IsGenericImplementationOf
    (static: System.Boolean System.Type System.Type))
  (define-method-port
    is-assignable-to?
    System.Linq.Expressions.Extensions
    IsAssignableTo
    (static: System.Boolean System.Type System.Type))
  (define-method-port
    get-not-nullable-type
    System.Linq.Expressions.Extensions
    GetNotNullableType
    (static: System.Type System.Type))
  (define-method-port
    make-nullable-type
    System.Linq.Expressions.Extensions
    MakeNullableType
    (static: System.Type System.Type))
  (define-method-port
    on-field-or-property
    System.Linq.Expressions.Extensions
    OnFieldOrProperty)
  (define-method-port
    get-invoke-method
    System.Linq.Expressions.Extensions
    GetInvokeMethod
    (static: System.Reflection.MethodInfo System.Type))
  (define-method-port
    is-generic-instance-of?
    System.Linq.Expressions.Extensions
    IsGenericInstanceOf
    (static: System.Boolean System.Type System.Type))
  (define-method-port
    make-generic-method-from
    System.Linq.Expressions.Extensions
    MakeGenericMethodFrom
    (static:
      System.Reflection.MethodInfo
      System.Reflection.MethodInfo
      System.Reflection.MethodInfo))
  (define-method-port
    make-generic-type-from
    System.Linq.Expressions.Extensions
    MakeGenericTypeFrom
    (static: System.Type System.Type System.Type))
  (define-method-port
    is-expression?
    System.Linq.Expressions.Extensions
    IsExpression
    (static: System.Boolean System.Type))
  (define-method-port
    get-first-generic-argument
    System.Linq.Expressions.Extensions
    GetFirstGenericArgument
    (static: System.Type System.Type))
  (define-method-port
    is-nullable?
    System.Linq.Expressions.Extensions
    IsNullable
    (static: System.Boolean System.Type))
  (define-method-port
    get-parameter-types
    System.Linq.Expressions.Extensions
    GetParameterTypes
    (static: System.Type[] System.Reflection.MethodBase))
  (define-method-port
    make-strong-box-type
    System.Linq.Expressions.Extensions
    MakeStrongBoxType
    (static: System.Type System.Type)))
