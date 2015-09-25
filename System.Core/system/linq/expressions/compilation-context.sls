(library (system linq expressions compilation-context)
  (export new
          is?
          compilation-context?
          add-compilation-unit
          get-hoisted-locals
          create-hoisted-locals
          add-global
          create-delegate
          get-globals
          isolate-expression)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Linq.Expressions.CompilationContext
             a
             ...)))))
  (define (is? a) (clr-is System.Linq.Expressions.CompilationContext a))
  (define (compilation-context? a)
    (clr-is System.Linq.Expressions.CompilationContext a))
  (define-method-port
    add-compilation-unit
    System.Linq.Expressions.CompilationContext
    AddCompilationUnit
    (System.Int32
      System.Linq.Expressions.EmitContext
      System.Linq.Expressions.LambdaExpression)
    (System.Int32 System.Linq.Expressions.LambdaExpression))
  (define-method-port
    get-hoisted-locals
    System.Linq.Expressions.CompilationContext
    GetHoistedLocals
    ("System.Collections.Generic.List`1[[System.Linq.Expressions.ParameterExpression, System.Core, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"
     System.Linq.Expressions.LambdaExpression))
  (define-method-port
    create-hoisted-locals
    System.Linq.Expressions.CompilationContext
    CreateHoistedLocals
    (System.Object[] System.Int32))
  (define-method-port
    add-global
    System.Linq.Expressions.CompilationContext
    AddGlobal
    (System.Int32 System.Object))
  (define-method-port
    create-delegate
    System.Linq.Expressions.CompilationContext
    CreateDelegate
    (System.Delegate
      System.Int32
      System.Runtime.CompilerServices.ExecutionScope)
    (System.Delegate))
  (define-method-port
    get-globals
    System.Linq.Expressions.CompilationContext
    GetGlobals
    (System.Object[]))
  (define-method-port
    isolate-expression
    System.Linq.Expressions.CompilationContext
    IsolateExpression
    (System.Linq.Expressions.Expression
      System.Runtime.CompilerServices.ExecutionScope
      System.Object[]
      System.Linq.Expressions.Expression)))
