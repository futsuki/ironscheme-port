(library (mono globalization unicode normalization)
  (export new
          is?
          normalization?
          get-canonical
          quick-check
          is-normalized?
          normalize
          no-nfd
          no-nfkd
          no-nfc
          maybe-nfc
          no-nfkc
          maybe-nfkc
          full-composition-exclusion
          is-unsafe
          is-ready?
          is-ready?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new Mono.Globalization.Unicode.Normalization a ...)))))
  (define (is? a) (clr-is Mono.Globalization.Unicode.Normalization a))
  (define (normalization? a)
    (clr-is Mono.Globalization.Unicode.Normalization a))
  (define-method-port
    get-canonical
    Mono.Globalization.Unicode.Normalization
    GetCanonical
    (static: System.Void System.Int32 System.Int32[] System.Int32))
  (define-method-port
    quick-check
    Mono.Globalization.Unicode.Normalization
    QuickCheck
    (static:
      Mono.Globalization.Unicode.NormalizationCheck
      System.Char
      System.Int32))
  (define-method-port
    is-normalized?
    Mono.Globalization.Unicode.Normalization
    IsNormalized
    (static: System.Boolean System.String System.Int32))
  (define-method-port
    normalize
    Mono.Globalization.Unicode.Normalization
    Normalize
    (static: System.String System.String System.Int32))
  (define-field-port
    no-nfd
    #f
    #f
    (static:)
    Mono.Globalization.Unicode.Normalization
    NoNfd
    System.Int32)
  (define-field-port
    no-nfkd
    #f
    #f
    (static:)
    Mono.Globalization.Unicode.Normalization
    NoNfkd
    System.Int32)
  (define-field-port
    no-nfc
    #f
    #f
    (static:)
    Mono.Globalization.Unicode.Normalization
    NoNfc
    System.Int32)
  (define-field-port
    maybe-nfc
    #f
    #f
    (static:)
    Mono.Globalization.Unicode.Normalization
    MaybeNfc
    System.Int32)
  (define-field-port
    no-nfkc
    #f
    #f
    (static:)
    Mono.Globalization.Unicode.Normalization
    NoNfkc
    System.Int32)
  (define-field-port
    maybe-nfkc
    #f
    #f
    (static:)
    Mono.Globalization.Unicode.Normalization
    MaybeNfkc
    System.Int32)
  (define-field-port
    full-composition-exclusion
    #f
    #f
    (static:)
    Mono.Globalization.Unicode.Normalization
    FullCompositionExclusion
    System.Int32)
  (define-field-port
    is-unsafe
    #f
    #f
    (static:)
    Mono.Globalization.Unicode.Normalization
    IsUnsafe
    System.Int32)
  (define-field-port
    is-ready?
    #f
    #f
    (static:)
    Mono.Globalization.Unicode.Normalization
    isReady
    System.Boolean)
  (define-field-port
    is-ready?
    #f
    #f
    (static: property:)
    Mono.Globalization.Unicode.Normalization
    IsReady
    System.Boolean))
