(library (mono xml xsl token)
  (export new
          is?
          token?
          error
          eof
          slash
          slash2
          dot
          dot2
          colon2
          comma
          at
          function-name
          bracket-open
          bracket-close
          paren-open
          paren-close
          and
          and
          or
          or
          div
          div
          mod
          mod
          plus
          minus
          asterisk
          dollar
          bar
          eq
          ne
          le
          ge
          lt
          gt
          ancestor
          ancestor
          ancestor-or-self
          attribute
          attribute
          child
          child
          descendant
          descendant
          descendant-or-self
          following
          following
          following-sibling
          sibling
          namespace
          name-space
          parent
          parent
          preceding
          preceding
          preceding-sibling
          self
          self
          comment
          comment
          text
          text
          processing-instruction
          node
          node
          multiply
          number
          literal
          qname
          yy-error-code)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new Mono.Xml.Xsl.Token a ...)))))
  (define (is? a) (clr-is Mono.Xml.Xsl.Token a))
  (define (token? a) (clr-is Mono.Xml.Xsl.Token a))
  (define-field-port
    error
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    ERROR
    System.Int32)
  (define-field-port
    eof
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    EOF
    System.Int32)
  (define-field-port
    slash
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    SLASH
    System.Int32)
  (define-field-port
    slash2
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    SLASH2
    System.Int32)
  (define-field-port
    dot
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    DOT
    System.Int32)
  (define-field-port
    dot2
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    DOT2
    System.Int32)
  (define-field-port
    colon2
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    COLON2
    System.Int32)
  (define-field-port
    comma
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    COMMA
    System.Int32)
  (define-field-port
    at
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    AT
    System.Int32)
  (define-field-port
    function-name
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    FUNCTION_NAME
    System.Int32)
  (define-field-port
    bracket-open
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    BRACKET_OPEN
    System.Int32)
  (define-field-port
    bracket-close
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    BRACKET_CLOSE
    System.Int32)
  (define-field-port
    paren-open
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    PAREN_OPEN
    System.Int32)
  (define-field-port
    paren-close
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    PAREN_CLOSE
    System.Int32)
  (define-field-port
    and
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    AND
    System.Int32)
  (define-field-port
    and
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    and
    System.Int32)
  (define-field-port
    or
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    OR
    System.Int32)
  (define-field-port
    or
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    or
    System.Int32)
  (define-field-port
    div
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    DIV
    System.Int32)
  (define-field-port
    div
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    div
    System.Int32)
  (define-field-port
    mod
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    MOD
    System.Int32)
  (define-field-port
    mod
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    mod
    System.Int32)
  (define-field-port
    plus
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    PLUS
    System.Int32)
  (define-field-port
    minus
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    MINUS
    System.Int32)
  (define-field-port
    asterisk
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    ASTERISK
    System.Int32)
  (define-field-port
    dollar
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    DOLLAR
    System.Int32)
  (define-field-port
    bar
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    BAR
    System.Int32)
  (define-field-port
    eq
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    EQ
    System.Int32)
  (define-field-port
    ne
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    NE
    System.Int32)
  (define-field-port
    le
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    LE
    System.Int32)
  (define-field-port
    ge
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    GE
    System.Int32)
  (define-field-port
    lt
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    LT
    System.Int32)
  (define-field-port
    gt
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    GT
    System.Int32)
  (define-field-port
    ancestor
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    ANCESTOR
    System.Int32)
  (define-field-port
    ancestor
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    ancestor
    System.Int32)
  (define-field-port
    ancestor-or-self
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    ANCESTOR_OR_SELF
    System.Int32)
  (define-field-port
    attribute
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    ATTRIBUTE
    System.Int32)
  (define-field-port
    attribute
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    attribute
    System.Int32)
  (define-field-port
    child
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    CHILD
    System.Int32)
  (define-field-port
    child
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    child
    System.Int32)
  (define-field-port
    descendant
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    DESCENDANT
    System.Int32)
  (define-field-port
    descendant
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    descendant
    System.Int32)
  (define-field-port
    descendant-or-self
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    DESCENDANT_OR_SELF
    System.Int32)
  (define-field-port
    following
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    FOLLOWING
    System.Int32)
  (define-field-port
    following
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    following
    System.Int32)
  (define-field-port
    following-sibling
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    FOLLOWING_SIBLING
    System.Int32)
  (define-field-port
    sibling
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    sibling
    System.Int32)
  (define-field-port
    namespace
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    NAMESPACE
    System.Int32)
  (define-field-port
    name-space
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    NameSpace
    System.Int32)
  (define-field-port
    parent
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    PARENT
    System.Int32)
  (define-field-port
    parent
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    parent
    System.Int32)
  (define-field-port
    preceding
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    PRECEDING
    System.Int32)
  (define-field-port
    preceding
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    preceding
    System.Int32)
  (define-field-port
    preceding-sibling
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    PRECEDING_SIBLING
    System.Int32)
  (define-field-port
    self
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    SELF
    System.Int32)
  (define-field-port
    self
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    self
    System.Int32)
  (define-field-port
    comment
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    COMMENT
    System.Int32)
  (define-field-port
    comment
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    comment
    System.Int32)
  (define-field-port
    text
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    TEXT
    System.Int32)
  (define-field-port
    text
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    text
    System.Int32)
  (define-field-port
    processing-instruction
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    PROCESSING_INSTRUCTION
    System.Int32)
  (define-field-port
    node
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    NODE
    System.Int32)
  (define-field-port
    node
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    node
    System.Int32)
  (define-field-port
    multiply
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    MULTIPLY
    System.Int32)
  (define-field-port
    number
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    NUMBER
    System.Int32)
  (define-field-port
    literal
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    LITERAL
    System.Int32)
  (define-field-port
    qname
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    QName
    System.Int32)
  (define-field-port
    yy-error-code
    #f
    #f
    (static:)
    Mono.Xml.Xsl.Token
    yyErrorCode
    System.Int32))
