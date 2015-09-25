(library (system time-zone-info)
  (export is?
          time-zone-info?
          is-ambiguous-time?
          get-hash-code
          create-custom-time-zone
          is-daylight-saving-time?
          from-serialized-string
          to-string
          get-object-data
          get-ambiguous-time-offsets
          has-same-rules?
          convert-time-from-utc
          find-system-time-zone-by-id
          convert-time
          to-serialized-string
          on-deserialization
          get-system-time-zones
          convert-time-to-utc
          get-utc-offset
          convert-time-by-system-time-zone-id
          clear-cached-data
          equals?
          get-adjustment-rules
          is-invalid-time?
          base-utc-offset
          daylight-name
          display-name
          id
          local
          standard-name
          supports-daylight-saving-time?
          utc)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.TimeZoneInfo a))
  (define (time-zone-info? a) (clr-is System.TimeZoneInfo a))
  (define-method-port
    is-ambiguous-time?
    System.TimeZoneInfo
    IsAmbiguousTime
    (System.Boolean System.DateTimeOffset)
    (System.Boolean System.DateTime))
  (define-method-port
    get-hash-code
    System.TimeZoneInfo
    GetHashCode
    (System.Int32))
  (define-method-port
    create-custom-time-zone
    System.TimeZoneInfo
    CreateCustomTimeZone
    (static:
      System.TimeZoneInfo
      System.String
      System.TimeSpan
      System.String
      System.String
      System.String
      System.TimeZoneInfo+AdjustmentRule[]
      System.Boolean)
    (static:
      System.TimeZoneInfo
      System.String
      System.TimeSpan
      System.String
      System.String
      System.String
      System.TimeZoneInfo+AdjustmentRule[])
    (static:
      System.TimeZoneInfo
      System.String
      System.TimeSpan
      System.String
      System.String))
  (define-method-port
    is-daylight-saving-time?
    System.TimeZoneInfo
    IsDaylightSavingTime
    (System.Boolean System.DateTimeOffset)
    (System.Boolean System.DateTime))
  (define-method-port
    from-serialized-string
    System.TimeZoneInfo
    FromSerializedString
    (static: System.TimeZoneInfo System.String))
  (define-method-port
    to-string
    System.TimeZoneInfo
    ToString
    (System.String))
  (define-method-port
    get-object-data
    System.TimeZoneInfo
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    get-ambiguous-time-offsets
    System.TimeZoneInfo
    GetAmbiguousTimeOffsets
    (System.TimeSpan[] System.DateTimeOffset)
    (System.TimeSpan[] System.DateTime))
  (define-method-port
    has-same-rules?
    System.TimeZoneInfo
    HasSameRules
    (System.Boolean System.TimeZoneInfo))
  (define-method-port
    convert-time-from-utc
    System.TimeZoneInfo
    ConvertTimeFromUtc
    (static: System.DateTime System.DateTime System.TimeZoneInfo))
  (define-method-port
    find-system-time-zone-by-id
    System.TimeZoneInfo
    FindSystemTimeZoneById
    (static: System.TimeZoneInfo System.String))
  (define-method-port
    convert-time
    System.TimeZoneInfo
    ConvertTime
    (static:
      System.DateTimeOffset
      System.DateTimeOffset
      System.TimeZoneInfo)
    (static:
      System.DateTime
      System.DateTime
      System.TimeZoneInfo
      System.TimeZoneInfo)
    (static: System.DateTime System.DateTime System.TimeZoneInfo))
  (define-method-port
    to-serialized-string
    System.TimeZoneInfo
    ToSerializedString
    (System.String))
  (define-method-port
    on-deserialization
    System.TimeZoneInfo
    OnDeserialization
    (System.Void System.Object))
  (define-method-port
    get-system-time-zones
    System.TimeZoneInfo
    GetSystemTimeZones
    (static:
      "System.Collections.ObjectModel.ReadOnlyCollection`1[[System.TimeZoneInfo, System.Core, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"))
  (define-method-port
    convert-time-to-utc
    System.TimeZoneInfo
    ConvertTimeToUtc
    (static: System.DateTime System.DateTime System.TimeZoneInfo)
    (static: System.DateTime System.DateTime))
  (define-method-port
    get-utc-offset
    System.TimeZoneInfo
    GetUtcOffset
    (System.TimeSpan System.DateTimeOffset)
    (System.TimeSpan System.DateTime))
  (define-method-port
    convert-time-by-system-time-zone-id
    System.TimeZoneInfo
    ConvertTimeBySystemTimeZoneId
    (static: System.DateTimeOffset System.DateTimeOffset System.String)
    (static:
      System.DateTime
      System.DateTime
      System.String
      System.String)
    (static: System.DateTime System.DateTime System.String))
  (define-method-port
    clear-cached-data
    System.TimeZoneInfo
    ClearCachedData
    (static: System.Void))
  (define-method-port
    equals?
    System.TimeZoneInfo
    Equals
    (System.Boolean System.TimeZoneInfo))
  (define-method-port
    get-adjustment-rules
    System.TimeZoneInfo
    GetAdjustmentRules
    (System.TimeZoneInfo+AdjustmentRule[]))
  (define-method-port
    is-invalid-time?
    System.TimeZoneInfo
    IsInvalidTime
    (System.Boolean System.DateTime))
  (define-field-port
    base-utc-offset
    #f
    #f
    (property:)
    System.TimeZoneInfo
    BaseUtcOffset
    System.TimeSpan)
  (define-field-port
    daylight-name
    #f
    #f
    (property:)
    System.TimeZoneInfo
    DaylightName
    System.String)
  (define-field-port
    display-name
    #f
    #f
    (property:)
    System.TimeZoneInfo
    DisplayName
    System.String)
  (define-field-port
    id
    #f
    #f
    (property:)
    System.TimeZoneInfo
    Id
    System.String)
  (define-field-port
    local
    #f
    #f
    (static: property:)
    System.TimeZoneInfo
    Local
    System.TimeZoneInfo)
  (define-field-port
    standard-name
    #f
    #f
    (property:)
    System.TimeZoneInfo
    StandardName
    System.String)
  (define-field-port
    supports-daylight-saving-time?
    #f
    #f
    (property:)
    System.TimeZoneInfo
    SupportsDaylightSavingTime
    System.Boolean)
  (define-field-port
    utc
    #f
    #f
    (static: property:)
    System.TimeZoneInfo
    Utc
    System.TimeZoneInfo))
