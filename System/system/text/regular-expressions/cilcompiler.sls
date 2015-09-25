(library (system text regular-expressions cilcompiler)
  (export new
          is?
          cilcompiler?
          emit-op-ignore-reverse
          emit-op
          emit-op-negate-reverse
          trace-compile?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Text.RegularExpressions.CILCompiler
             a
             ...)))))
  (define (is? a) (clr-is System.Text.RegularExpressions.CILCompiler a))
  (define (cilcompiler? a)
    (clr-is System.Text.RegularExpressions.CILCompiler a))
  (define-method-port
    emit-op-ignore-reverse
    System.Text.RegularExpressions.CILCompiler
    EmitOpIgnoreReverse
    (System.Void
      System.Text.RegularExpressions.RxOp
      System.Boolean
      System.Boolean))
  (define-method-port
    emit-op
    System.Text.RegularExpressions.CILCompiler
    EmitOp
    (System.Void
      System.Text.RegularExpressions.RxOp
      System.Boolean
      System.Boolean
      System.Boolean))
  (define-method-port
    emit-op-negate-reverse
    System.Text.RegularExpressions.CILCompiler
    EmitOpNegateReverse
    (System.Void
      System.Text.RegularExpressions.RxOp
      System.Boolean
      System.Boolean))
  (define-field-port
    trace-compile?
    #f
    #f
    (static:)
    System.Text.RegularExpressions.CILCompiler
    trace_compile
    System.Boolean))
