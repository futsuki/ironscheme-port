(library (mono data sql-expressions parser)
  (export new
          is?
          parser?
          compile
          yyname
          yyerror
          error-output-get
          error-output-set!
          error-output-update!
          eof-token-get
          eof-token-set!
          eof-token-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Data.SqlExpressions.Parser a ...)))))
  (define (is? a) (clr-is Mono.Data.SqlExpressions.Parser a))
  (define (parser? a) (clr-is Mono.Data.SqlExpressions.Parser a))
  (define-method-port
    compile
    Mono.Data.SqlExpressions.Parser
    Compile
    (Mono.Data.SqlExpressions.IExpression System.String))
  (define-method-port
    yyname
    Mono.Data.SqlExpressions.Parser
    yyname
    (static: System.String System.Int32))
  (define-method-port
    yyerror
    Mono.Data.SqlExpressions.Parser
    yyerror
    (System.Void System.String System.String[])
    (System.Void System.String))
  (define-field-port
    error-output-get
    error-output-set!
    error-output-update!
    ()
    Mono.Data.SqlExpressions.Parser
    ErrorOutput
    System.IO.TextWriter)
  (define-field-port
    eof-token-get
    eof-token-set!
    eof-token-update!
    ()
    Mono.Data.SqlExpressions.Parser
    eof_token
    System.Int32))
