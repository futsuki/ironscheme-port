(library (system text regular-expressions regex)
  (export new
          is?
          regex?
          group-number-from-name
          group-name-from-number
          unescape
          replace
          is-match?
          split
          compile-to-assembly
          escape
          get-group-numbers
          match
          get-group-names
          to-string
          matches
          cache-size-get
          cache-size-set!
          cache-size-update!
          options
          right-to-left?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Text.RegularExpressions.Regex a ...)))))
  (define (is? a) (clr-is System.Text.RegularExpressions.Regex a))
  (define (regex? a) (clr-is System.Text.RegularExpressions.Regex a))
  (define-method-port
    group-number-from-name
    System.Text.RegularExpressions.Regex
    GroupNumberFromName
    (System.Int32 System.String))
  (define-method-port
    group-name-from-number
    System.Text.RegularExpressions.Regex
    GroupNameFromNumber
    (System.String System.Int32))
  (define-method-port
    unescape
    System.Text.RegularExpressions.Regex
    Unescape
    (static: System.String System.String))
  (define-method-port
    replace
    System.Text.RegularExpressions.Regex
    Replace
    (System.String
      System.String
      System.String
      System.Int32
      System.Int32)
    (System.String System.String System.String System.Int32)
    (System.String System.String System.String)
    (System.String
      System.String
      System.Text.RegularExpressions.MatchEvaluator
      System.Int32
      System.Int32)
    (System.String
      System.String
      System.Text.RegularExpressions.MatchEvaluator
      System.Int32)
    (System.String
      System.String
      System.Text.RegularExpressions.MatchEvaluator)
    (static:
      System.String
      System.String
      System.String
      System.String
      System.Text.RegularExpressions.RegexOptions)
    (static: System.String System.String System.String System.String)
    (static:
      System.String
      System.String
      System.String
      System.Text.RegularExpressions.MatchEvaluator
      System.Text.RegularExpressions.RegexOptions)
    (static:
      System.String
      System.String
      System.String
      System.Text.RegularExpressions.MatchEvaluator))
  (define-method-port
    is-match?
    System.Text.RegularExpressions.Regex
    IsMatch
    (System.Boolean System.String System.Int32)
    (System.Boolean System.String)
    (static:
      System.Boolean
      System.String
      System.String
      System.Text.RegularExpressions.RegexOptions)
    (static: System.Boolean System.String System.String))
  (define-method-port
    split
    System.Text.RegularExpressions.Regex
    Split
    (System.String[] System.String System.Int32 System.Int32)
    (System.String[] System.String System.Int32)
    (System.String[] System.String)
    (static:
      System.String[]
      System.String
      System.String
      System.Text.RegularExpressions.RegexOptions)
    (static: System.String[] System.String System.String))
  (define-method-port
    compile-to-assembly
    System.Text.RegularExpressions.Regex
    CompileToAssembly
    (static:
      System.Void
      System.Text.RegularExpressions.RegexCompilationInfo[]
      System.Reflection.AssemblyName
      System.Reflection.Emit.CustomAttributeBuilder[]
      System.String)
    (static:
      System.Void
      System.Text.RegularExpressions.RegexCompilationInfo[]
      System.Reflection.AssemblyName
      System.Reflection.Emit.CustomAttributeBuilder[])
    (static:
      System.Void
      System.Text.RegularExpressions.RegexCompilationInfo[]
      System.Reflection.AssemblyName))
  (define-method-port
    escape
    System.Text.RegularExpressions.Regex
    Escape
    (static: System.String System.String))
  (define-method-port
    get-group-numbers
    System.Text.RegularExpressions.Regex
    GetGroupNumbers
    (System.Int32[]))
  (define-method-port
    match
    System.Text.RegularExpressions.Regex
    Match
    (System.Text.RegularExpressions.Match
      System.String
      System.Int32
      System.Int32)
    (System.Text.RegularExpressions.Match System.String System.Int32)
    (System.Text.RegularExpressions.Match System.String)
    (static:
      System.Text.RegularExpressions.Match
      System.String
      System.String
      System.Text.RegularExpressions.RegexOptions)
    (static:
      System.Text.RegularExpressions.Match
      System.String
      System.String))
  (define-method-port
    get-group-names
    System.Text.RegularExpressions.Regex
    GetGroupNames
    (System.String[]))
  (define-method-port
    to-string
    System.Text.RegularExpressions.Regex
    ToString
    (System.String))
  (define-method-port
    matches
    System.Text.RegularExpressions.Regex
    Matches
    (System.Text.RegularExpressions.MatchCollection
      System.String
      System.Int32)
    (System.Text.RegularExpressions.MatchCollection System.String)
    (static:
      System.Text.RegularExpressions.MatchCollection
      System.String
      System.String
      System.Text.RegularExpressions.RegexOptions)
    (static:
      System.Text.RegularExpressions.MatchCollection
      System.String
      System.String))
  (define-field-port
    cache-size-get
    cache-size-set!
    cache-size-update!
    (static: property:)
    System.Text.RegularExpressions.Regex
    CacheSize
    System.Int32)
  (define-field-port
    options
    #f
    #f
    (property:)
    System.Text.RegularExpressions.Regex
    Options
    System.Text.RegularExpressions.RegexOptions)
  (define-field-port
    right-to-left?
    #f
    #f
    (property:)
    System.Text.RegularExpressions.Regex
    RightToLeft
    System.Boolean))
