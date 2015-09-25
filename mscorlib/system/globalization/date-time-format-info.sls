(library (system globalization date-time-format-info)
  (export new
          is?
          date-time-format-info?
          get-all-date-time-patterns
          get-era
          get-era-name
          get-abbreviated-era-name
          get-instance
          get-month-name
          read-only
          get-shortest-day-name
          get-abbreviated-day-name
          get-format
          get-abbreviated-month-name
          get-day-name
          clone
          set-all-date-time-patterns
          is-read-only?
          abbreviated-day-names-get
          abbreviated-day-names-set!
          abbreviated-day-names-update!
          abbreviated-month-names-get
          abbreviated-month-names-set!
          abbreviated-month-names-update!
          day-names-get
          day-names-set!
          day-names-update!
          month-names-get
          month-names-set!
          month-names-update!
          amdesignator-get
          amdesignator-set!
          amdesignator-update!
          pmdesignator-get
          pmdesignator-set!
          pmdesignator-update!
          date-separator-get
          date-separator-set!
          date-separator-update!
          time-separator-get
          time-separator-set!
          time-separator-update!
          long-date-pattern-get
          long-date-pattern-set!
          long-date-pattern-update!
          short-date-pattern-get
          short-date-pattern-set!
          short-date-pattern-update!
          short-time-pattern-get
          short-time-pattern-set!
          short-time-pattern-update!
          long-time-pattern-get
          long-time-pattern-set!
          long-time-pattern-update!
          month-day-pattern-get
          month-day-pattern-set!
          month-day-pattern-update!
          year-month-pattern-get
          year-month-pattern-set!
          year-month-pattern-update!
          full-date-time-pattern-get
          full-date-time-pattern-set!
          full-date-time-pattern-update!
          current-info
          invariant-info
          first-day-of-week-get
          first-day-of-week-set!
          first-day-of-week-update!
          calendar-get
          calendar-set!
          calendar-update!
          calendar-week-rule-get
          calendar-week-rule-set!
          calendar-week-rule-update!
          rfc1123-pattern
          sortable-date-time-pattern
          universal-sortable-date-time-pattern
          abbreviated-month-genitive-names-get
          abbreviated-month-genitive-names-set!
          abbreviated-month-genitive-names-update!
          month-genitive-names-get
          month-genitive-names-set!
          month-genitive-names-update!
          native-calendar-name
          shortest-day-names-get
          shortest-day-names-set!
          shortest-day-names-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Globalization.DateTimeFormatInfo a ...)))))
  (define (is? a) (clr-is System.Globalization.DateTimeFormatInfo a))
  (define (date-time-format-info? a)
    (clr-is System.Globalization.DateTimeFormatInfo a))
  (define-method-port
    get-all-date-time-patterns
    System.Globalization.DateTimeFormatInfo
    GetAllDateTimePatterns
    (System.String[] System.Char)
    (System.String[]))
  (define-method-port
    get-era
    System.Globalization.DateTimeFormatInfo
    GetEra
    (System.Int32 System.String))
  (define-method-port
    get-era-name
    System.Globalization.DateTimeFormatInfo
    GetEraName
    (System.String System.Int32))
  (define-method-port
    get-abbreviated-era-name
    System.Globalization.DateTimeFormatInfo
    GetAbbreviatedEraName
    (System.String System.Int32))
  (define-method-port
    get-instance
    System.Globalization.DateTimeFormatInfo
    GetInstance
    (static:
      System.Globalization.DateTimeFormatInfo
      System.IFormatProvider))
  (define-method-port
    get-month-name
    System.Globalization.DateTimeFormatInfo
    GetMonthName
    (System.String System.Int32))
  (define-method-port
    read-only
    System.Globalization.DateTimeFormatInfo
    ReadOnly
    (static:
      System.Globalization.DateTimeFormatInfo
      System.Globalization.DateTimeFormatInfo))
  (define-method-port
    get-shortest-day-name
    System.Globalization.DateTimeFormatInfo
    GetShortestDayName
    (System.String System.DayOfWeek))
  (define-method-port
    get-abbreviated-day-name
    System.Globalization.DateTimeFormatInfo
    GetAbbreviatedDayName
    (System.String System.DayOfWeek))
  (define-method-port
    get-format
    System.Globalization.DateTimeFormatInfo
    GetFormat
    (System.Object System.Type))
  (define-method-port
    get-abbreviated-month-name
    System.Globalization.DateTimeFormatInfo
    GetAbbreviatedMonthName
    (System.String System.Int32))
  (define-method-port
    get-day-name
    System.Globalization.DateTimeFormatInfo
    GetDayName
    (System.String System.DayOfWeek))
  (define-method-port
    clone
    System.Globalization.DateTimeFormatInfo
    Clone
    (System.Object))
  (define-method-port
    set-all-date-time-patterns
    System.Globalization.DateTimeFormatInfo
    SetAllDateTimePatterns
    (System.Void System.String[] System.Char))
  (define-field-port
    is-read-only?
    #f
    #f
    (property:)
    System.Globalization.DateTimeFormatInfo
    IsReadOnly
    System.Boolean)
  (define-field-port
    abbreviated-day-names-get
    abbreviated-day-names-set!
    abbreviated-day-names-update!
    (property:)
    System.Globalization.DateTimeFormatInfo
    AbbreviatedDayNames
    System.String[])
  (define-field-port
    abbreviated-month-names-get
    abbreviated-month-names-set!
    abbreviated-month-names-update!
    (property:)
    System.Globalization.DateTimeFormatInfo
    AbbreviatedMonthNames
    System.String[])
  (define-field-port
    day-names-get
    day-names-set!
    day-names-update!
    (property:)
    System.Globalization.DateTimeFormatInfo
    DayNames
    System.String[])
  (define-field-port
    month-names-get
    month-names-set!
    month-names-update!
    (property:)
    System.Globalization.DateTimeFormatInfo
    MonthNames
    System.String[])
  (define-field-port
    amdesignator-get
    amdesignator-set!
    amdesignator-update!
    (property:)
    System.Globalization.DateTimeFormatInfo
    AMDesignator
    System.String)
  (define-field-port
    pmdesignator-get
    pmdesignator-set!
    pmdesignator-update!
    (property:)
    System.Globalization.DateTimeFormatInfo
    PMDesignator
    System.String)
  (define-field-port
    date-separator-get
    date-separator-set!
    date-separator-update!
    (property:)
    System.Globalization.DateTimeFormatInfo
    DateSeparator
    System.String)
  (define-field-port
    time-separator-get
    time-separator-set!
    time-separator-update!
    (property:)
    System.Globalization.DateTimeFormatInfo
    TimeSeparator
    System.String)
  (define-field-port
    long-date-pattern-get
    long-date-pattern-set!
    long-date-pattern-update!
    (property:)
    System.Globalization.DateTimeFormatInfo
    LongDatePattern
    System.String)
  (define-field-port
    short-date-pattern-get
    short-date-pattern-set!
    short-date-pattern-update!
    (property:)
    System.Globalization.DateTimeFormatInfo
    ShortDatePattern
    System.String)
  (define-field-port
    short-time-pattern-get
    short-time-pattern-set!
    short-time-pattern-update!
    (property:)
    System.Globalization.DateTimeFormatInfo
    ShortTimePattern
    System.String)
  (define-field-port
    long-time-pattern-get
    long-time-pattern-set!
    long-time-pattern-update!
    (property:)
    System.Globalization.DateTimeFormatInfo
    LongTimePattern
    System.String)
  (define-field-port
    month-day-pattern-get
    month-day-pattern-set!
    month-day-pattern-update!
    (property:)
    System.Globalization.DateTimeFormatInfo
    MonthDayPattern
    System.String)
  (define-field-port
    year-month-pattern-get
    year-month-pattern-set!
    year-month-pattern-update!
    (property:)
    System.Globalization.DateTimeFormatInfo
    YearMonthPattern
    System.String)
  (define-field-port
    full-date-time-pattern-get
    full-date-time-pattern-set!
    full-date-time-pattern-update!
    (property:)
    System.Globalization.DateTimeFormatInfo
    FullDateTimePattern
    System.String)
  (define-field-port
    current-info
    #f
    #f
    (static: property:)
    System.Globalization.DateTimeFormatInfo
    CurrentInfo
    System.Globalization.DateTimeFormatInfo)
  (define-field-port
    invariant-info
    #f
    #f
    (static: property:)
    System.Globalization.DateTimeFormatInfo
    InvariantInfo
    System.Globalization.DateTimeFormatInfo)
  (define-field-port
    first-day-of-week-get
    first-day-of-week-set!
    first-day-of-week-update!
    (property:)
    System.Globalization.DateTimeFormatInfo
    FirstDayOfWeek
    System.DayOfWeek)
  (define-field-port
    calendar-get
    calendar-set!
    calendar-update!
    (property:)
    System.Globalization.DateTimeFormatInfo
    Calendar
    System.Globalization.Calendar)
  (define-field-port
    calendar-week-rule-get
    calendar-week-rule-set!
    calendar-week-rule-update!
    (property:)
    System.Globalization.DateTimeFormatInfo
    CalendarWeekRule
    System.Globalization.CalendarWeekRule)
  (define-field-port
    rfc1123-pattern
    #f
    #f
    (property:)
    System.Globalization.DateTimeFormatInfo
    RFC1123Pattern
    System.String)
  (define-field-port
    sortable-date-time-pattern
    #f
    #f
    (property:)
    System.Globalization.DateTimeFormatInfo
    SortableDateTimePattern
    System.String)
  (define-field-port
    universal-sortable-date-time-pattern
    #f
    #f
    (property:)
    System.Globalization.DateTimeFormatInfo
    UniversalSortableDateTimePattern
    System.String)
  (define-field-port
    abbreviated-month-genitive-names-get
    abbreviated-month-genitive-names-set!
    abbreviated-month-genitive-names-update!
    (property:)
    System.Globalization.DateTimeFormatInfo
    AbbreviatedMonthGenitiveNames
    System.String[])
  (define-field-port
    month-genitive-names-get
    month-genitive-names-set!
    month-genitive-names-update!
    (property:)
    System.Globalization.DateTimeFormatInfo
    MonthGenitiveNames
    System.String[])
  (define-field-port
    native-calendar-name
    #f
    #f
    (property:)
    System.Globalization.DateTimeFormatInfo
    NativeCalendarName
    System.String)
  (define-field-port
    shortest-day-names-get
    shortest-day-names-set!
    shortest-day-names-update!
    (property:)
    System.Globalization.DateTimeFormatInfo
    ShortestDayNames
    System.String[]))
