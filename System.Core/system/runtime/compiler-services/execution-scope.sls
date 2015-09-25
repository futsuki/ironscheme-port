(library (system runtime compiler-services execution-scope)
  (export is?
          execution-scope?
          create-hoisted-locals
          create-delegate
          isolate-expression
          globals-get
          globals-set!
          globals-update!
          locals-get
          locals-set!
          locals-update!
          parent-get
          parent-set!
          parent-update!)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Runtime.CompilerServices.ExecutionScope a))
  (define (execution-scope? a)
    (clr-is System.Runtime.CompilerServices.ExecutionScope a))
  (define-method-port
    create-hoisted-locals
    System.Runtime.CompilerServices.ExecutionScope
    CreateHoistedLocals
    (System.Object[]))
  (define-method-port
    create-delegate
    System.Runtime.CompilerServices.ExecutionScope
    CreateDelegate
    (System.Delegate System.Int32 System.Object[]))
  (define-method-port
    isolate-expression
    System.Runtime.CompilerServices.ExecutionScope
    IsolateExpression
    (System.Linq.Expressions.Expression
      System.Linq.Expressions.Expression
      System.Object[]))
  (define-field-port
    globals-get
    globals-set!
    globals-update!
    ()
    System.Runtime.CompilerServices.ExecutionScope
    Globals
    System.Object[])
  (define-field-port
    locals-get
    locals-set!
    locals-update!
    ()
    System.Runtime.CompilerServices.ExecutionScope
    Locals
    System.Object[])
  (define-field-port
    parent-get
    parent-set!
    parent-update!
    ()
    System.Runtime.CompilerServices.ExecutionScope
    Parent
    System.Runtime.CompilerServices.ExecutionScope))
