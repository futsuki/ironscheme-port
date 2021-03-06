(library (system globalization region-info)
  (export new
          is?
          region-info?
          get-hash-code
          to-string
          equals?
          current-region
          currency-english-name
          currency-symbol
          display-name
          english-name
          geo-id
          is-metric?
          isocurrency-symbol
          native-name
          currency-native-name
          name
          three-letter-isoregion-name
          three-letter-windows-region-name
          two-letter-isoregion-name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Globalization.RegionInfo a ...)))))
  (define (is? a) (clr-is System.Globalization.RegionInfo a))
  (define (region-info? a) (clr-is System.Globalization.RegionInfo a))
  (define-method-port
    get-hash-code
    System.Globalization.RegionInfo
    GetHashCode
    (System.Int32))
  (define-method-port
    to-string
    System.Globalization.RegionInfo
    ToString
    (System.String))
  (define-method-port
    equals?
    System.Globalization.RegionInfo
    Equals
    (System.Boolean System.Object))
  (define-field-port
    current-region
    #f
    #f
    (static: property:)
    System.Globalization.RegionInfo
    CurrentRegion
    System.Globalization.RegionInfo)
  (define-field-port
    currency-english-name
    #f
    #f
    (property:)
    System.Globalization.RegionInfo
    CurrencyEnglishName
    System.String)
  (define-field-port
    currency-symbol
    #f
    #f
    (property:)
    System.Globalization.RegionInfo
    CurrencySymbol
    System.String)
  (define-field-port
    display-name
    #f
    #f
    (property:)
    System.Globalization.RegionInfo
    DisplayName
    System.String)
  (define-field-port
    english-name
    #f
    #f
    (property:)
    System.Globalization.RegionInfo
    EnglishName
    System.String)
  (define-field-port
    geo-id
    #f
    #f
    (property:)
    System.Globalization.RegionInfo
    GeoId
    System.Int32)
  (define-field-port
    is-metric?
    #f
    #f
    (property:)
    System.Globalization.RegionInfo
    IsMetric
    System.Boolean)
  (define-field-port
    isocurrency-symbol
    #f
    #f
    (property:)
    System.Globalization.RegionInfo
    ISOCurrencySymbol
    System.String)
  (define-field-port
    native-name
    #f
    #f
    (property:)
    System.Globalization.RegionInfo
    NativeName
    System.String)
  (define-field-port
    currency-native-name
    #f
    #f
    (property:)
    System.Globalization.RegionInfo
    CurrencyNativeName
    System.String)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Globalization.RegionInfo
    Name
    System.String)
  (define-field-port
    three-letter-isoregion-name
    #f
    #f
    (property:)
    System.Globalization.RegionInfo
    ThreeLetterISORegionName
    System.String)
  (define-field-port
    three-letter-windows-region-name
    #f
    #f
    (property:)
    System.Globalization.RegionInfo
    ThreeLetterWindowsRegionName
    System.String)
  (define-field-port
    two-letter-isoregion-name
    #f
    #f
    (property:)
    System.Globalization.RegionInfo
    TwoLetterISORegionName
    System.String))
