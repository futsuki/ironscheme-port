(library (mono xml xpath xpath-parser)
  (export new
          is?
          xpath-parser?
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
        ((_ a ...) #'(clr-new Mono.Xml.XPath.XPathParser a ...)))))
  (define (is? a) (clr-is Mono.Xml.XPath.XPathParser a))
  (define (xpath-parser? a) (clr-is Mono.Xml.XPath.XPathParser a))
  (define-method-port
    yyname
    Mono.Xml.XPath.XPathParser
    yyname
    (static: System.String System.Int32))
  (define-method-port
    yyerror
    Mono.Xml.XPath.XPathParser
    yyerror
    (System.Void System.String System.String[])
    (System.Void System.String))
  (define-field-port
    error-output-get
    error-output-set!
    error-output-update!
    ()
    Mono.Xml.XPath.XPathParser
    ErrorOutput
    System.IO.TextWriter)
  (define-field-port
    eof-token-get
    eof-token-set!
    eof-token-update!
    ()
    Mono.Xml.XPath.XPathParser
    eof_token
    System.Int32))
