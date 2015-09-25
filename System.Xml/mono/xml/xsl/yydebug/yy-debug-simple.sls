(library (mono xml xsl yydebug yy-debug-simple)
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
         #'(clr-new Mono.Xml.Xsl.yydebug.yyDebugSimple a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.yydebug.yyDebugSimple a))
  (define (yy-debug-simple? a)
    (clr-is Mono.Xml.Xsl.yydebug.yyDebugSimple a))
  (define-method-port
    pop
    Mono.Xml.Xsl.yydebug.yyDebugSimple
    pop
    (System.Void System.Int32))
  (define-method-port
    push
    Mono.Xml.Xsl.yydebug.yyDebugSimple
    push
    (System.Void System.Int32 System.Object))
  (define-method-port
    lex
    Mono.Xml.Xsl.yydebug.yyDebugSimple
    lex
    (System.Void System.Int32 System.Int32 System.String System.Object))
  (define-method-port
    reduce
    Mono.Xml.Xsl.yydebug.yyDebugSimple
    reduce
    (System.Void
      System.Int32
      System.Int32
      System.Int32
      System.String
      System.Int32))
  (define-method-port
    reject
    Mono.Xml.Xsl.yydebug.yyDebugSimple
    reject
    (System.Void))
  (define-method-port
    error
    Mono.Xml.Xsl.yydebug.yyDebugSimple
    error
    (System.Void System.String))
  (define-method-port
    discard
    Mono.Xml.Xsl.yydebug.yyDebugSimple
    discard
    (System.Void System.Int32 System.Int32 System.String System.Object))
  (define-method-port
    accept
    Mono.Xml.Xsl.yydebug.yyDebugSimple
    accept
    (System.Void System.Object))
  (define-method-port
    shift
    Mono.Xml.Xsl.yydebug.yyDebugSimple
    shift
    (System.Void System.Int32 System.Int32)
    (System.Void System.Int32 System.Int32 System.Int32)))
