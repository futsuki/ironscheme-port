(library (mono data sql-expressions string-function)
  (export is? string-function? eval)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is Mono.Data.SqlExpressions.StringFunction a))
  (define (string-function? a)
    (clr-is Mono.Data.SqlExpressions.StringFunction a))
  (define-method-port
    eval
    Mono.Data.SqlExpressions.StringFunction
    Eval
    (System.Object System.Data.DataRow)))
