(library (mono xml xpath yydebug yy-debug-simple)
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
         #'(clr-new Mono.Xml.XPath.yydebug.yyDebugSimple a ...)))))
  (define (is? a) (clr-is Mono.Xml.XPath.yydebug.yyDebugSimple a))
  (define (yy-debug-simple? a)
    (clr-is Mono.Xml.XPath.yydebug.yyDebugSimple a))
  (define-method-port
    pop
    Mono.Xml.XPath.yydebug.yyDebugSimple
    pop
    (System.Void System.Int32))
  (define-method-port
    push
    Mono.Xml.XPath.yydebug.yyDebugSimple
    push
    (System.Void System.Int32 System.Object))
  (define-method-port
    lex
    Mono.Xml.XPath.yydebug.yyDebugSimple
    lex
    (System.Void System.Int32 System.Int32 System.String System.Object))
  (define-method-port
    reduce
    Mono.Xml.XPath.yydebug.yyDebugSimple
    reduce
    (System.Void
      System.Int32
      System.Int32
      System.Int32
      System.String
      System.Int32))
  (define-method-port
    reject
    Mono.Xml.XPath.yydebug.yyDebugSimple
    reject
    (System.Void))
  (define-method-port
    error
    Mono.Xml.XPath.yydebug.yyDebugSimple
    error
    (System.Void System.String))
  (define-method-port
    discard
    Mono.Xml.XPath.yydebug.yyDebugSimple
    discard
    (System.Void System.Int32 System.Int32 System.String System.Object))
  (define-method-port
    accept
    Mono.Xml.XPath.yydebug.yyDebugSimple
    accept
    (System.Void System.Object))
  (define-method-port
    shift
    Mono.Xml.XPath.yydebug.yyDebugSimple
    shift
    (System.Void System.Int32 System.Int32)
    (System.Void System.Int32 System.Int32 System.Int32)))
