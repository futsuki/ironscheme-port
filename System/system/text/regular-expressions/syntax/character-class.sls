(library (system text regular-expressions syntax character-class)
  (export new
          is?
          character-class?
          add-range
          compile
          add-category
          get-width
          is-complex?
          add-character
          negate?-get
          negate?-set!
          negate?-update!
          ignore-case?-get
          ignore-case?-set!
          ignore-case?-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Text.RegularExpressions.Syntax.CharacterClass
             a
             ...)))))
  (define (is? a)
    (clr-is System.Text.RegularExpressions.Syntax.CharacterClass a))
  (define (character-class? a)
    (clr-is System.Text.RegularExpressions.Syntax.CharacterClass a))
  (define-method-port
    add-range
    System.Text.RegularExpressions.Syntax.CharacterClass
    AddRange
    (System.Void System.Char System.Char))
  (define-method-port
    compile
    System.Text.RegularExpressions.Syntax.CharacterClass
    Compile
    (System.Void
      System.Text.RegularExpressions.ICompiler
      System.Boolean))
  (define-method-port
    add-category
    System.Text.RegularExpressions.Syntax.CharacterClass
    AddCategory
    (System.Void
      System.Text.RegularExpressions.Category
      System.Boolean))
  (define-method-port
    get-width
    System.Text.RegularExpressions.Syntax.CharacterClass
    GetWidth
    (System.Void System.Int32& System.Int32&))
  (define-method-port
    is-complex?
    System.Text.RegularExpressions.Syntax.CharacterClass
    IsComplex
    (System.Boolean))
  (define-method-port
    add-character
    System.Text.RegularExpressions.Syntax.CharacterClass
    AddCharacter
    (System.Void System.Char))
  (define-field-port
    negate?-get
    negate?-set!
    negate?-update!
    (property:)
    System.Text.RegularExpressions.Syntax.CharacterClass
    Negate
    System.Boolean)
  (define-field-port
    ignore-case?-get
    ignore-case?-set!
    ignore-case?-update!
    (property:)
    System.Text.RegularExpressions.Syntax.CharacterClass
    IgnoreCase
    System.Boolean))
