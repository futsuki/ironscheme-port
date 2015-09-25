(library (system net cookie)
  (export new
          is?
          cookie?
          get-hash-code
          to-string
          equals?
          comment-get
          comment-set!
          comment-update!
          comment-uri-get
          comment-uri-set!
          comment-uri-update!
          discard?-get
          discard?-set!
          discard?-update!
          domain-get
          domain-set!
          domain-update!
          expired?-get
          expired?-set!
          expired?-update!
          expires-get
          expires-set!
          expires-update!
          http-only?-get
          http-only?-set!
          http-only?-update!
          name-get
          name-set!
          name-update!
          path-get
          path-set!
          path-update!
          port-get
          port-set!
          port-update!
          secure?-get
          secure?-set!
          secure?-update!
          time-stamp
          value-get
          value-set!
          value-update!
          version-get
          version-set!
          version-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.Cookie a ...)))))
  (define (is? a) (clr-is System.Net.Cookie a))
  (define (cookie? a) (clr-is System.Net.Cookie a))
  (define-method-port
    get-hash-code
    System.Net.Cookie
    GetHashCode
    (System.Int32))
  (define-method-port
    to-string
    System.Net.Cookie
    ToString
    (System.String))
  (define-method-port
    equals?
    System.Net.Cookie
    Equals
    (System.Boolean System.Object))
  (define-field-port
    comment-get
    comment-set!
    comment-update!
    (property:)
    System.Net.Cookie
    Comment
    System.String)
  (define-field-port
    comment-uri-get
    comment-uri-set!
    comment-uri-update!
    (property:)
    System.Net.Cookie
    CommentUri
    System.Uri)
  (define-field-port
    discard?-get
    discard?-set!
    discard?-update!
    (property:)
    System.Net.Cookie
    Discard
    System.Boolean)
  (define-field-port
    domain-get
    domain-set!
    domain-update!
    (property:)
    System.Net.Cookie
    Domain
    System.String)
  (define-field-port
    expired?-get
    expired?-set!
    expired?-update!
    (property:)
    System.Net.Cookie
    Expired
    System.Boolean)
  (define-field-port
    expires-get
    expires-set!
    expires-update!
    (property:)
    System.Net.Cookie
    Expires
    System.DateTime)
  (define-field-port
    http-only?-get
    http-only?-set!
    http-only?-update!
    (property:)
    System.Net.Cookie
    HttpOnly
    System.Boolean)
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    System.Net.Cookie
    Name
    System.String)
  (define-field-port
    path-get
    path-set!
    path-update!
    (property:)
    System.Net.Cookie
    Path
    System.String)
  (define-field-port
    port-get
    port-set!
    port-update!
    (property:)
    System.Net.Cookie
    Port
    System.String)
  (define-field-port
    secure?-get
    secure?-set!
    secure?-update!
    (property:)
    System.Net.Cookie
    Secure
    System.Boolean)
  (define-field-port
    time-stamp
    #f
    #f
    (property:)
    System.Net.Cookie
    TimeStamp
    System.DateTime)
  (define-field-port
    value-get
    value-set!
    value-update!
    (property:)
    System.Net.Cookie
    Value
    System.String)
  (define-field-port
    version-get
    version-set!
    version-update!
    (property:)
    System.Net.Cookie
    Version
    System.Int32))