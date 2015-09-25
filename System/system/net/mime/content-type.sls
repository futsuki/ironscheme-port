(library (system net mime content-type)
  (export new
          is?
          content-type?
          get-hash-code
          to-string
          equals?
          boundary-get
          boundary-set!
          boundary-update!
          char-set-get
          char-set-set!
          char-set-update!
          media-type-get
          media-type-set!
          media-type-update!
          name-get
          name-set!
          name-update!
          parameters)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Net.Mime.ContentType a ...)))))
  (define (is? a) (clr-is System.Net.Mime.ContentType a))
  (define (content-type? a) (clr-is System.Net.Mime.ContentType a))
  (define-method-port
    get-hash-code
    System.Net.Mime.ContentType
    GetHashCode
    (System.Int32))
  (define-method-port
    to-string
    System.Net.Mime.ContentType
    ToString
    (System.String))
  (define-method-port
    equals?
    System.Net.Mime.ContentType
    Equals
    (System.Boolean System.Object))
  (define-field-port
    boundary-get
    boundary-set!
    boundary-update!
    (property:)
    System.Net.Mime.ContentType
    Boundary
    System.String)
  (define-field-port
    char-set-get
    char-set-set!
    char-set-update!
    (property:)
    System.Net.Mime.ContentType
    CharSet
    System.String)
  (define-field-port
    media-type-get
    media-type-set!
    media-type-update!
    (property:)
    System.Net.Mime.ContentType
    MediaType
    System.String)
  (define-field-port
    name-get
    name-set!
    name-update!
    (property:)
    System.Net.Mime.ContentType
    Name
    System.String)
  (define-field-port
    parameters
    #f
    #f
    (property:)
    System.Net.Mime.ContentType
    Parameters
    System.Collections.Specialized.StringDictionary))
