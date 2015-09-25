(library (unity-engine networking match list-match-request)
  (export new
          is?
          list-match-request?
          is-valid?
          to-string
          page-size-get
          page-size-set!
          page-size-update!
          page-num-get
          page-num-set!
          page-num-update!
          name-filter-get
          name-filter-set!
          name-filter-update!
          elo-score-get
          elo-score-set!
          elo-score-update!
          match-attribute-filter-less-than-get
          match-attribute-filter-less-than-set!
          match-attribute-filter-less-than-update!
          match-attribute-filter-equal-to-get
          match-attribute-filter-equal-to-set!
          match-attribute-filter-equal-to-update!
          match-attribute-filter-greater-than-get
          match-attribute-filter-greater-than-set!
          match-attribute-filter-greater-than-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             UnityEngine.Networking.Match.ListMatchRequest
             a
             ...)))))
  (define (is? a)
    (clr-is UnityEngine.Networking.Match.ListMatchRequest a))
  (define (list-match-request? a)
    (clr-is UnityEngine.Networking.Match.ListMatchRequest a))
  (define-method-port
    is-valid?
    UnityEngine.Networking.Match.ListMatchRequest
    IsValid
    (System.Boolean))
  (define-method-port
    to-string
    UnityEngine.Networking.Match.ListMatchRequest
    ToString
    (System.String))
  (define-field-port
    page-size-get
    page-size-set!
    page-size-update!
    (property:)
    UnityEngine.Networking.Match.ListMatchRequest
    pageSize
    System.Int32)
  (define-field-port
    page-num-get
    page-num-set!
    page-num-update!
    (property:)
    UnityEngine.Networking.Match.ListMatchRequest
    pageNum
    System.Int32)
  (define-field-port
    name-filter-get
    name-filter-set!
    name-filter-update!
    (property:)
    UnityEngine.Networking.Match.ListMatchRequest
    nameFilter
    System.String)
  (define-field-port
    elo-score-get
    elo-score-set!
    elo-score-update!
    (property:)
    UnityEngine.Networking.Match.ListMatchRequest
    eloScore
    System.Int32)
  (define-field-port
    match-attribute-filter-less-than-get
    match-attribute-filter-less-than-set!
    match-attribute-filter-less-than-update!
    (property:)
    UnityEngine.Networking.Match.ListMatchRequest
    matchAttributeFilterLessThan
    "System.Collections.Generic.Dictionary`2[[System.String, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089],[System.Int64, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]")
  (define-field-port
    match-attribute-filter-equal-to-get
    match-attribute-filter-equal-to-set!
    match-attribute-filter-equal-to-update!
    (property:)
    UnityEngine.Networking.Match.ListMatchRequest
    matchAttributeFilterEqualTo
    "System.Collections.Generic.Dictionary`2[[System.String, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089],[System.Int64, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]")
  (define-field-port
    match-attribute-filter-greater-than-get
    match-attribute-filter-greater-than-set!
    match-attribute-filter-greater-than-update!
    (property:)
    UnityEngine.Networking.Match.ListMatchRequest
    matchAttributeFilterGreaterThan
    "System.Collections.Generic.Dictionary`2[[System.String, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089],[System.Int64, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"))
