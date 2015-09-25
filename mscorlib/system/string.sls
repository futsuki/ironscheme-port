(library (system string)
  (export new
          is?
          string?
          intern
          to-lower-invariant
          get-hash-code
          trim
          insert
          index-of
          compare-ordinal
          last-index-of
          normalize
          replace
          index-of-any
          is-null-or-empty?
          to-string
          to-char-array
          split
          compare-to
          get-enumerator
          join
          to-upper-invariant
          last-index-of-any
          to-upper
          get-type-code
          contains?
          remove
          trim-start
          substring
          concat
          trim-end
          pad-right
          starts-with?
          is-normalized?
          is-interned
          to-lower
          format
          compare
          clone
          copy-to
          copy
          equals?
          pad-left
          ends-with?
          empty
          length)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e () ((_ a ...) #'(clr-new System.String a ...)))))
  (define (is? a) (clr-is System.String a))
  (define (string? a) (clr-is System.String a))
  (define-method-port
    intern
    System.String
    Intern
    (static: System.String System.String))
  (define-method-port
    to-lower-invariant
    System.String
    ToLowerInvariant
    (System.String))
  (define-method-port
    get-hash-code
    System.String
    GetHashCode
    (System.Int32))
  (define-method-port
    trim
    System.String
    Trim
    (System.String System.Char[])
    (System.String))
  (define-method-port
    insert
    System.String
    Insert
    (System.String System.Int32 System.String))
  (define-method-port
    index-of
    System.String
    IndexOf
    (System.Int32 System.String System.Int32 System.Int32)
    (System.Int32 System.String System.Int32)
    (System.Int32 System.String)
    (System.Int32 System.Char System.Int32 System.Int32)
    (System.Int32 System.Char System.Int32)
    (System.Int32 System.Char)
    (System.Int32
      System.String
      System.Int32
      System.Int32
      System.StringComparison)
    (System.Int32 System.String System.Int32 System.StringComparison)
    (System.Int32 System.String System.StringComparison))
  (define-method-port
    compare-ordinal
    System.String
    CompareOrdinal
    (static:
      System.Int32
      System.String
      System.Int32
      System.String
      System.Int32
      System.Int32)
    (static: System.Int32 System.String System.String))
  (define-method-port
    last-index-of
    System.String
    LastIndexOf
    (System.Int32 System.String System.Int32 System.Int32)
    (System.Int32 System.String System.Int32)
    (System.Int32 System.String)
    (System.Int32 System.Char System.Int32 System.Int32)
    (System.Int32 System.Char System.Int32)
    (System.Int32 System.Char)
    (System.Int32
      System.String
      System.Int32
      System.Int32
      System.StringComparison)
    (System.Int32 System.String System.Int32 System.StringComparison)
    (System.Int32 System.String System.StringComparison))
  (define-method-port
    normalize
    System.String
    Normalize
    (System.String System.Text.NormalizationForm)
    (System.String))
  (define-method-port
    replace
    System.String
    Replace
    (System.String System.String System.String)
    (System.String System.Char System.Char))
  (define-method-port
    index-of-any
    System.String
    IndexOfAny
    (System.Int32 System.Char[] System.Int32 System.Int32)
    (System.Int32 System.Char[] System.Int32)
    (System.Int32 System.Char[]))
  (define-method-port
    is-null-or-empty?
    System.String
    IsNullOrEmpty
    (static: System.Boolean System.String))
  (define-method-port
    to-string
    System.String
    ToString
    (System.String System.IFormatProvider)
    (System.String))
  (define-method-port
    to-char-array
    System.String
    ToCharArray
    (System.Char[] System.Int32 System.Int32)
    (System.Char[]))
  (define-method-port
    split
    System.String
    Split
    (System.String[] System.String[] System.StringSplitOptions)
    (System.String[] System.Char[] System.StringSplitOptions)
    (System.String[]
      System.String[]
      System.Int32
      System.StringSplitOptions)
    (System.String[]
      System.Char[]
      System.Int32
      System.StringSplitOptions)
    (System.String[] System.Char[] System.Int32)
    (System.String[] System.Char[]))
  (define-method-port
    compare-to
    System.String
    CompareTo
    (System.Int32 System.String)
    (System.Int32 System.Object))
  (define-method-port
    get-enumerator
    System.String
    GetEnumerator
    (System.CharEnumerator))
  (define-method-port
    join
    System.String
    Join
    (static:
      System.String
      System.String
      System.String[]
      System.Int32
      System.Int32)
    (static: System.String System.String System.String[]))
  (define-method-port
    to-upper-invariant
    System.String
    ToUpperInvariant
    (System.String))
  (define-method-port
    last-index-of-any
    System.String
    LastIndexOfAny
    (System.Int32 System.Char[] System.Int32 System.Int32)
    (System.Int32 System.Char[] System.Int32)
    (System.Int32 System.Char[]))
  (define-method-port
    to-upper
    System.String
    ToUpper
    (System.String System.Globalization.CultureInfo)
    (System.String))
  (define-method-port
    get-type-code
    System.String
    GetTypeCode
    (System.TypeCode))
  (define-method-port
    contains?
    System.String
    Contains
    (System.Boolean System.String))
  (define-method-port
    remove
    System.String
    Remove
    (System.String System.Int32 System.Int32)
    (System.String System.Int32))
  (define-method-port
    trim-start
    System.String
    TrimStart
    (System.String System.Char[]))
  (define-method-port
    substring
    System.String
    Substring
    (System.String System.Int32 System.Int32)
    (System.String System.Int32))
  (define-method-port
    concat
    System.String
    Concat
    (static: System.String System.String[])
    (static: System.String System.Object[])
    (static:
      System.String
      System.String
      System.String
      System.String
      System.String)
    (static: System.String System.String System.String System.String)
    (static: System.String System.String System.String)
    (static: System.String System.Object System.Object System.Object)
    (static: System.String System.Object System.Object)
    (static: System.String System.Object))
  (define-method-port
    trim-end
    System.String
    TrimEnd
    (System.String System.Char[]))
  (define-method-port
    pad-right
    System.String
    PadRight
    (System.String System.Int32 System.Char)
    (System.String System.Int32))
  (define-method-port
    starts-with?
    System.String
    StartsWith
    (System.Boolean
      System.String
      System.Boolean
      System.Globalization.CultureInfo)
    (System.Boolean System.String System.StringComparison)
    (System.Boolean System.String))
  (define-method-port
    is-normalized?
    System.String
    IsNormalized
    (System.Boolean System.Text.NormalizationForm)
    (System.Boolean))
  (define-method-port
    is-interned
    System.String
    IsInterned
    (static: System.String System.String))
  (define-method-port
    to-lower
    System.String
    ToLower
    (System.String System.Globalization.CultureInfo)
    (System.String))
  (define-method-port
    format
    System.String
    Format
    (static:
      System.String
      System.IFormatProvider
      System.String
      System.Object[])
    (static: System.String System.String System.Object[])
    (static:
      System.String
      System.String
      System.Object
      System.Object
      System.Object)
    (static: System.String System.String System.Object System.Object)
    (static: System.String System.String System.Object))
  (define-method-port
    compare
    System.String
    Compare
    (static:
      System.Int32
      System.String
      System.Int32
      System.String
      System.Int32
      System.Int32
      System.Globalization.CultureInfo
      System.Globalization.CompareOptions)
    (static:
      System.Int32
      System.String
      System.String
      System.Globalization.CultureInfo
      System.Globalization.CompareOptions)
    (static:
      System.Int32
      System.String
      System.Int32
      System.String
      System.Int32
      System.Int32
      System.StringComparison)
    (static:
      System.Int32
      System.String
      System.String
      System.StringComparison)
    (static:
      System.Int32
      System.String
      System.Int32
      System.String
      System.Int32
      System.Int32
      System.Boolean
      System.Globalization.CultureInfo)
    (static:
      System.Int32
      System.String
      System.Int32
      System.String
      System.Int32
      System.Int32
      System.Boolean)
    (static:
      System.Int32
      System.String
      System.Int32
      System.String
      System.Int32
      System.Int32)
    (static:
      System.Int32
      System.String
      System.String
      System.Boolean
      System.Globalization.CultureInfo)
    (static: System.Int32 System.String System.String System.Boolean)
    (static: System.Int32 System.String System.String))
  (define-method-port clone System.String Clone (System.Object))
  (define-method-port
    copy-to
    System.String
    CopyTo
    (System.Void System.Int32 System.Char[] System.Int32 System.Int32))
  (define-method-port
    copy
    System.String
    Copy
    (static: System.String System.String))
  (define-method-port
    equals?
    System.String
    Equals
    (System.Boolean System.String System.StringComparison)
    (static:
      System.Boolean
      System.String
      System.String
      System.StringComparison)
    (System.Boolean System.String)
    (System.Boolean System.Object)
    (static: System.Boolean System.String System.String))
  (define-method-port
    pad-left
    System.String
    PadLeft
    (System.String System.Int32 System.Char)
    (System.String System.Int32))
  (define-method-port
    ends-with?
    System.String
    EndsWith
    (System.Boolean System.String System.StringComparison)
    (System.Boolean
      System.String
      System.Boolean
      System.Globalization.CultureInfo)
    (System.Boolean System.String))
  (define-field-port
    empty
    #f
    #f
    (static:)
    System.String
    Empty
    System.String)
  (define-field-port
    length
    #f
    #f
    (property:)
    System.String
    Length
    System.Int32))
