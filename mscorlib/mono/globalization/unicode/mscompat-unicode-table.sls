(library (mono globalization unicode mscompat-unicode-table)
  (export new
          is?
          mscompat-unicode-table?
          is-japanese-small-letter?
          is-hiragana?
          is-sortable?
          is-half-width-kana?
          fill-cjk
          to-width-compat
          get-tailoring-info
          to-kana-type-insensitive
          get-japanese-dash-type
          is-ignorable?
          build-tailoring-tables
          is-ignorable-non-spacing?
          has-special-weight?
          category
          level1
          level2
          level3
          is-ignorable-symbol?
          max-expansion-length-get
          max-expansion-length-set!
          max-expansion-length-update!
          is-ready?
          is-ready?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             Mono.Globalization.Unicode.MSCompatUnicodeTable
             a
             ...)))))
  (define (is? a)
    (clr-is Mono.Globalization.Unicode.MSCompatUnicodeTable a))
  (define (mscompat-unicode-table? a)
    (clr-is Mono.Globalization.Unicode.MSCompatUnicodeTable a))
  (define-method-port
    is-japanese-small-letter?
    Mono.Globalization.Unicode.MSCompatUnicodeTable
    IsJapaneseSmallLetter
    (static: System.Boolean System.Char))
  (define-method-port
    is-hiragana?
    Mono.Globalization.Unicode.MSCompatUnicodeTable
    IsHiragana
    (static: System.Boolean System.Char))
  (define-method-port
    is-sortable?
    Mono.Globalization.Unicode.MSCompatUnicodeTable
    IsSortable
    (static: System.Boolean System.Int32)
    (static: System.Boolean System.String))
  (define-method-port
    is-half-width-kana?
    Mono.Globalization.Unicode.MSCompatUnicodeTable
    IsHalfWidthKana
    (static: System.Boolean System.Char))
  (define-method-port
    fill-cjk
    Mono.Globalization.Unicode.MSCompatUnicodeTable
    FillCJK
    (static:
      System.Void
      System.String
      Mono.Globalization.Unicode.CodePointIndexer&
      System.Byte*&
      System.Byte*&
      Mono.Globalization.Unicode.CodePointIndexer&
      System.Byte*&))
  (define-method-port
    to-width-compat
    Mono.Globalization.Unicode.MSCompatUnicodeTable
    ToWidthCompat
    (static: System.Int32 System.Int32))
  (define-method-port
    get-tailoring-info
    Mono.Globalization.Unicode.MSCompatUnicodeTable
    GetTailoringInfo
    (static: Mono.Globalization.Unicode.TailoringInfo System.Int32))
  (define-method-port
    to-kana-type-insensitive
    Mono.Globalization.Unicode.MSCompatUnicodeTable
    ToKanaTypeInsensitive
    (static: System.Int32 System.Int32))
  (define-method-port
    get-japanese-dash-type
    Mono.Globalization.Unicode.MSCompatUnicodeTable
    GetJapaneseDashType
    (static: System.Byte System.Char))
  (define-method-port
    is-ignorable?
    Mono.Globalization.Unicode.MSCompatUnicodeTable
    IsIgnorable
    (static: System.Boolean System.Int32 System.Byte)
    (static: System.Boolean System.Int32))
  (define-method-port
    build-tailoring-tables
    Mono.Globalization.Unicode.MSCompatUnicodeTable
    BuildTailoringTables
    (static:
      System.Void
      System.Globalization.CultureInfo
      Mono.Globalization.Unicode.TailoringInfo
      Mono.Globalization.Unicode.Contraction[]&
      Mono.Globalization.Unicode.Level2Map[]&))
  (define-method-port
    is-ignorable-non-spacing?
    Mono.Globalization.Unicode.MSCompatUnicodeTable
    IsIgnorableNonSpacing
    (static: System.Boolean System.Int32))
  (define-method-port
    has-special-weight?
    Mono.Globalization.Unicode.MSCompatUnicodeTable
    HasSpecialWeight
    (static: System.Boolean System.Char))
  (define-method-port
    category
    Mono.Globalization.Unicode.MSCompatUnicodeTable
    Category
    (static: System.Byte System.Int32))
  (define-method-port
    level1
    Mono.Globalization.Unicode.MSCompatUnicodeTable
    Level1
    (static: System.Byte System.Int32))
  (define-method-port
    level2
    Mono.Globalization.Unicode.MSCompatUnicodeTable
    Level2
    (static: System.Byte System.Int32))
  (define-method-port
    level3
    Mono.Globalization.Unicode.MSCompatUnicodeTable
    Level3
    (static: System.Byte System.Int32))
  (define-method-port
    is-ignorable-symbol?
    Mono.Globalization.Unicode.MSCompatUnicodeTable
    IsIgnorableSymbol
    (static: System.Boolean System.Int32))
  (define-field-port
    max-expansion-length-get
    max-expansion-length-set!
    max-expansion-length-update!
    (static:)
    Mono.Globalization.Unicode.MSCompatUnicodeTable
    MaxExpansionLength
    System.Int32)
  (define-field-port
    is-ready?
    #f
    #f
    (static:)
    Mono.Globalization.Unicode.MSCompatUnicodeTable
    isReady
    System.Boolean)
  (define-field-port
    is-ready?
    #f
    #f
    (static: property:)
    Mono.Globalization.Unicode.MSCompatUnicodeTable
    IsReady
    System.Boolean))
