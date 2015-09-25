(library (mono data sql-expressions yydebug yy-debug-simple)
  (export new
          is?
          yy-debug-simple?
          pop
          push
          lex
          reduce
          reject
          error
          discard
          accept
          shift)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Mono.Data.SqlExpressions.yydebug.yyDebugSimple
             a
             ...)))))
  (define (is? a)
    (clr-is Mono.Data.SqlExpressions.yydebug.yyDebugSimple a))
  (define (yy-debug-simple? a)
    (clr-is Mono.Data.SqlExpressions.yydebug.yyDebugSimple a))
  (define-method-port
    pop
    Mono.Data.SqlExpressions.yydebug.yyDebugSimple
    pop
    (System.Void System.Int32))
  (define-method-port
    push
    Mono.Data.SqlExpressions.yydebug.yyDebugSimple
    push
    (System.Void System.Int32 System.Object))
  (define-method-port
    lex
    Mono.Data.SqlExpressions.yydebug.yyDebugSimple
    lex
    (System.Void System.Int32 System.Int32 System.String System.Object))
  (define-method-port
    reduce
    Mono.Data.SqlExpressions.yydebug.yyDebugSimple
    reduce
    (System.Void
      System.Int32
      System.Int32
      System.Int32
      System.String
      System.Int32))
  (define-method-port
    reject
    Mono.Data.SqlExpressions.yydebug.yyDebugSimple
    reject
    (System.Void))
  (define-method-port
    error
    Mono.Data.SqlExpressions.yydebug.yyDebugSimple
    error
    (System.Void System.String))
  (define-method-port
    discard
    Mono.Data.SqlExpressions.yydebug.yyDebugSimple
    discard
    (System.Void System.Int32 System.Int32 System.String System.Object))
  (define-method-port
    accept
    Mono.Data.SqlExpressions.yydebug.yyDebugSimple
    accept
    (System.Void System.Object))
  (define-method-port
    shift
    Mono.Data.SqlExpressions.yydebug.yyDebugSimple
    shift
    (System.Void System.Int32 System.Int32)
    (System.Void System.Int32 System.Int32 System.Int32)))
