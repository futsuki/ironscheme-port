(library (system application-id)
  (export new
          is?
          application-id?
          get-hash-code
          to-string
          copy
          equals?
          culture
          name
          processor-architecture
          public-key-token
          version)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.ApplicationId a ...)))))
  (define (is? a) (clr-is System.ApplicationId a))
  (define (application-id? a) (clr-is System.ApplicationId a))
  (define-method-port
    get-hash-code
    System.ApplicationId
    GetHashCode
    (System.Int32))
  (define-method-port
    to-string
    System.ApplicationId
    ToString
    (System.String))
  (define-method-port
    copy
    System.ApplicationId
    Copy
    (System.ApplicationId))
  (define-method-port
    equals?
    System.ApplicationId
    Equals
    (System.Boolean System.Object))
  (define-field-port
    culture
    #f
    #f
    (property:)
    System.ApplicationId
    Culture
    System.String)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.ApplicationId
    Name
    System.String)
  (define-field-port
    processor-architecture
    #f
    #f
    (property:)
    System.ApplicationId
    ProcessorArchitecture
    System.String)
  (define-field-port
    public-key-token
    #f
    #f
    (property:)
    System.ApplicationId
    PublicKeyToken
    System.Byte[])
  (define-field-port
    version
    #f
    #f
    (property:)
    System.ApplicationId
    Version
    System.Version))
