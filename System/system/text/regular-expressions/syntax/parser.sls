(library (system text regular-expressions syntax parser)
  (export new
          is?
          parser?
          get-mapping
          parse-name
          parse-hex
          unescape
          parse-regular-expression
          parse-octal
          parse-number
          parse-decimal
          escape)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Text.RegularExpressions.Syntax.Parser
             a
             ...)))))
  (define (is? a)
    (clr-is System.Text.RegularExpressions.Syntax.Parser a))
  (define (parser? a)
    (clr-is System.Text.RegularExpressions.Syntax.Parser a))
  (define-method-port
    get-mapping
    System.Text.RegularExpressions.Syntax.Parser
    GetMapping
    (System.Int32 System.Collections.Hashtable))
  (define-method-port
    parse-name
    System.Text.RegularExpressions.Syntax.Parser
    ParseName
    (static: System.String System.String System.Int32&))
  (define-method-port
    parse-hex
    System.Text.RegularExpressions.Syntax.Parser
    ParseHex
    (static: System.Int32 System.String System.Int32& System.Int32))
  (define-method-port
    unescape
    System.Text.RegularExpressions.Syntax.Parser
    Unescape
    (static: System.String System.String))
  (define-method-port
    parse-regular-expression
    System.Text.RegularExpressions.Syntax.Parser
    ParseRegularExpression
    (System.Text.RegularExpressions.Syntax.RegularExpression
      System.String
      System.Text.RegularExpressions.RegexOptions))
  (define-method-port
    parse-octal
    System.Text.RegularExpressions.Syntax.Parser
    ParseOctal
    (static: System.Int32 System.String System.Int32&))
  (define-method-port
    parse-number
    System.Text.RegularExpressions.Syntax.Parser
    ParseNumber
    (static:
      System.Int32
      System.String
      System.Int32&
      System.Int32
      System.Int32
      System.Int32))
  (define-method-port
    parse-decimal
    System.Text.RegularExpressions.Syntax.Parser
    ParseDecimal
    (static: System.Int32 System.String System.Int32&))
  (define-method-port
    escape
    System.Text.RegularExpressions.Syntax.Parser
    Escape
    (static: System.String System.String)))
