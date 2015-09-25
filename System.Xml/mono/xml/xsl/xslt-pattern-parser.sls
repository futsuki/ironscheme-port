(library (mono xml xsl xslt-pattern-parser)
  (export new
          is?
          xslt-pattern-parser?
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
        ((_ a ...) #'(clr-new Mono.Xml.Xsl.XsltPatternParser a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.XsltPatternParser a))
  (define (xslt-pattern-parser? a)
    (clr-is Mono.Xml.Xsl.XsltPatternParser a))
  (define-method-port
    yyname
    Mono.Xml.Xsl.XsltPatternParser
    yyname
    (static: System.String System.Int32))
  (define-method-port
    yyerror
    Mono.Xml.Xsl.XsltPatternParser
    yyerror
    (System.Void System.String System.String[])
    (System.Void System.String))
  (define-field-port
    error-output-get
    error-output-set!
    error-output-update!
    ()
    Mono.Xml.Xsl.XsltPatternParser
    ErrorOutput
    System.IO.TextWriter)
  (define-field-port
    eof-token-get
    eof-token-set!
    eof-token-update!
    ()
    Mono.Xml.Xsl.XsltPatternParser
    eof_token
    System.Int32))
