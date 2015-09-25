(library (mono data sql-expressions literal)
  (export new is? literal? depends-on? get-hash-code eval equals?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Data.SqlExpressions.Literal a ...)))))
  (define (is? a) (clr-is Mono.Data.SqlExpressions.Literal a))
  (define (literal? a) (clr-is Mono.Data.SqlExpressions.Literal a))
  (define-method-port
    depends-on?
    Mono.Data.SqlExpressions.Literal
    DependsOn
    (System.Boolean System.Data.DataColumn))
  (define-method-port
    get-hash-code
    Mono.Data.SqlExpressions.Literal
    GetHashCode
    (System.Int32))
  (define-method-port
    eval
    Mono.Data.SqlExpressions.Literal
    Eval
    (System.Object System.Data.DataRow))
  (define-method-port
    equals?
    Mono.Data.SqlExpressions.Literal
    Equals
    (System.Boolean System.Object)))
