(library (system code-dom compiler code-generator-options)
  (export new
          is?
          code-generator-options?
          blank-lines-between-members?-get
          blank-lines-between-members?-set!
          blank-lines-between-members?-update!
          bracing-style-get
          bracing-style-set!
          bracing-style-update!
          else-on-closing?-get
          else-on-closing?-set!
          else-on-closing?-update!
          indent-string-get
          indent-string-set!
          indent-string-update!
          item-get
          item-set!
          item-update!
          verbatim-order?-get
          verbatim-order?-set!
          verbatim-order?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.CodeDom.Compiler.CodeGeneratorOptions
             a
             ...)))))
  (define (is? a)
    (clr-is System.CodeDom.Compiler.CodeGeneratorOptions a))
  (define (code-generator-options? a)
    (clr-is System.CodeDom.Compiler.CodeGeneratorOptions a))
  (define-field-port
    blank-lines-between-members?-get
    blank-lines-between-members?-set!
    blank-lines-between-members?-update!
    (property:)
    System.CodeDom.Compiler.CodeGeneratorOptions
    BlankLinesBetweenMembers
    System.Boolean)
  (define-field-port
    bracing-style-get
    bracing-style-set!
    bracing-style-update!
    (property:)
    System.CodeDom.Compiler.CodeGeneratorOptions
    BracingStyle
    System.String)
  (define-field-port
    else-on-closing?-get
    else-on-closing?-set!
    else-on-closing?-update!
    (property:)
    System.CodeDom.Compiler.CodeGeneratorOptions
    ElseOnClosing
    System.Boolean)
  (define-field-port
    indent-string-get
    indent-string-set!
    indent-string-update!
    (property:)
    System.CodeDom.Compiler.CodeGeneratorOptions
    IndentString
    System.String)
  (define-field-port
    item-get
    item-set!
    item-update!
    (property:)
    System.CodeDom.Compiler.CodeGeneratorOptions
    Item
    System.Object)
  (define-field-port
    verbatim-order?-get
    verbatim-order?-set!
    verbatim-order?-update!
    (property:)
    System.CodeDom.Compiler.CodeGeneratorOptions
    VerbatimOrder
    System.Boolean))
