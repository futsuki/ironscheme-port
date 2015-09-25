(library (system security policy hash)
  (export new
          is?
          hash?
          generate-hash
          create-md5
          get-object-data
          create-sha1
          to-string
          md5
          sha1)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...) #'(clr-new System.Security.Policy.Hash a ...)))))
  (define (is? a) (clr-is System.Security.Policy.Hash a))
  (define (hash? a) (clr-is System.Security.Policy.Hash a))
  (define-method-port
    generate-hash
    System.Security.Policy.Hash
    GenerateHash
    (System.Byte[] System.Security.Cryptography.HashAlgorithm))
  (define-method-port
    create-md5
    System.Security.Policy.Hash
    CreateMD5
    (static: System.Security.Policy.Hash System.Byte[]))
  (define-method-port
    get-object-data
    System.Security.Policy.Hash
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-method-port
    create-sha1
    System.Security.Policy.Hash
    CreateSHA1
    (static: System.Security.Policy.Hash System.Byte[]))
  (define-method-port
    to-string
    System.Security.Policy.Hash
    ToString
    (System.String))
  (define-field-port
    md5
    #f
    #f
    (property:)
    System.Security.Policy.Hash
    MD5
    System.Byte[])
  (define-field-port
    sha1
    #f
    #f
    (property:)
    System.Security.Policy.Hash
    SHA1
    System.Byte[]))
