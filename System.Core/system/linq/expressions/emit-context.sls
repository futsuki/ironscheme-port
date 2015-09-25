(library (system linq expressions emit-context)
  (export new
          is?
          emit-context?
          emit-load-subject
          create-delegate
          emit-scope
          emit-collection
          emit-nullable-initialize
          emit-read-global
          emit-load-locals
          emit-parent-scope
          emit-nullable-has-value
          emit-create-delegate
          emit-nullable-new
          is-local-parameter?
          emit-call
          emit-isolate-expression
          emit-stored
          emit-load-address
          emit-nullable-get-value-or-default
          is-hoisted-local?
          emit
          emit-load-hoisted-locals-store
          emit-nullable-get-value
          index-of-hoisted-local
          emit-load
          emit-is-inst
          emit-load-globals
          emit-load-strong-box-value
          ig
          has-hoisted-locals?
          lambda)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Linq.Expressions.EmitContext a ...)))))
  (define (is? a) (clr-is System.Linq.Expressions.EmitContext a))
  (define (emit-context? a)
    (clr-is System.Linq.Expressions.EmitContext a))
  (define-method-port
    emit-load-subject
    System.Linq.Expressions.EmitContext
    EmitLoadSubject
    (System.Void System.Reflection.Emit.LocalBuilder)
    (System.Void System.Linq.Expressions.Expression))
  (define-method-port
    create-delegate
    System.Linq.Expressions.EmitContext
    CreateDelegate
    (System.Delegate System.Runtime.CompilerServices.ExecutionScope))
  (define-method-port
    emit-scope
    System.Linq.Expressions.EmitContext
    EmitScope
    (System.Void))
  (define-method-port
    emit-collection
    System.Linq.Expressions.EmitContext
    EmitCollection)
  (define-method-port
    emit-nullable-initialize
    System.Linq.Expressions.EmitContext
    EmitNullableInitialize
    (System.Void System.Reflection.Emit.LocalBuilder))
  (define-method-port
    emit-read-global
    System.Linq.Expressions.EmitContext
    EmitReadGlobal
    (System.Void System.Object System.Type)
    (System.Void System.Object))
  (define-method-port
    emit-load-locals
    System.Linq.Expressions.EmitContext
    EmitLoadLocals
    (System.Void))
  (define-method-port
    emit-parent-scope
    System.Linq.Expressions.EmitContext
    EmitParentScope
    (System.Void))
  (define-method-port
    emit-nullable-has-value
    System.Linq.Expressions.EmitContext
    EmitNullableHasValue
    (System.Void System.Reflection.Emit.LocalBuilder))
  (define-method-port
    emit-create-delegate
    System.Linq.Expressions.EmitContext
    EmitCreateDelegate
    (System.Void System.Linq.Expressions.LambdaExpression))
  (define-method-port
    emit-nullable-new
    System.Linq.Expressions.EmitContext
    EmitNullableNew
    (System.Void System.Type))
  (define-method-port
    is-local-parameter?
    System.Linq.Expressions.EmitContext
    IsLocalParameter
    (System.Boolean
      System.Linq.Expressions.ParameterExpression
      System.Int32&))
  (define-method-port
    emit-call
    System.Linq.Expressions.EmitContext
    EmitCall
    (System.Void System.Reflection.MethodInfo)
    (System.Void
      System.Linq.Expressions.Expression
      System.Reflection.MethodInfo)
    (System.Void
      System.Reflection.Emit.LocalBuilder
      System.Reflection.MethodInfo))
  (define-method-port
    emit-isolate-expression
    System.Linq.Expressions.EmitContext
    EmitIsolateExpression
    (System.Void))
  (define-method-port
    emit-stored
    System.Linq.Expressions.EmitContext
    EmitStored
    (System.Reflection.Emit.LocalBuilder
      System.Linq.Expressions.Expression))
  (define-method-port
    emit-load-address
    System.Linq.Expressions.EmitContext
    EmitLoadAddress
    (System.Void System.Reflection.Emit.LocalBuilder)
    (System.Void System.Linq.Expressions.Expression))
  (define-method-port
    emit-nullable-get-value-or-default
    System.Linq.Expressions.EmitContext
    EmitNullableGetValueOrDefault
    (System.Void System.Reflection.Emit.LocalBuilder))
  (define-method-port
    is-hoisted-local?
    System.Linq.Expressions.EmitContext
    IsHoistedLocal
    (System.Boolean
      System.Linq.Expressions.ParameterExpression
      System.Int32&
      System.Int32&))
  (define-method-port
    emit
    System.Linq.Expressions.EmitContext
    Emit
    (System.Void System.Linq.Expressions.Expression)
    (System.Void))
  (define-method-port
    emit-load-hoisted-locals-store
    System.Linq.Expressions.EmitContext
    EmitLoadHoistedLocalsStore
    (System.Void))
  (define-method-port
    emit-nullable-get-value
    System.Linq.Expressions.EmitContext
    EmitNullableGetValue
    (System.Void System.Reflection.Emit.LocalBuilder))
  (define-method-port
    index-of-hoisted-local
    System.Linq.Expressions.EmitContext
    IndexOfHoistedLocal
    (System.Int32 System.Linq.Expressions.ParameterExpression))
  (define-method-port
    emit-load
    System.Linq.Expressions.EmitContext
    EmitLoad
    (System.Void System.Reflection.Emit.LocalBuilder))
  (define-method-port
    emit-is-inst
    System.Linq.Expressions.EmitContext
    EmitIsInst
    (System.Void System.Linq.Expressions.Expression System.Type))
  (define-method-port
    emit-load-globals
    System.Linq.Expressions.EmitContext
    EmitLoadGlobals
    (System.Void))
  (define-method-port
    emit-load-strong-box-value
    System.Linq.Expressions.EmitContext
    EmitLoadStrongBoxValue
    (System.Void System.Type))
  (define-field-port
    ig
    #f
    #f
    ()
    System.Linq.Expressions.EmitContext
    ig
    System.Reflection.Emit.ILGenerator)
  (define-field-port
    has-hoisted-locals?
    #f
    #f
    (property:)
    System.Linq.Expressions.EmitContext
    HasHoistedLocals
    System.Boolean)
  (define-field-port
    lambda
    #f
    #f
    (property:)
    System.Linq.Expressions.EmitContext
    Lambda
    System.Linq.Expressions.LambdaExpression))
