(library (system enterprise-services internal generate-metadata)
  (export new
          is?
          generate-metadata?
          generate-signed
          search-path
          generate-meta-data
          generate)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.Internal.GenerateMetadata
             a
             ...)))))
  (define (is? a)
    (clr-is System.EnterpriseServices.Internal.GenerateMetadata a))
  (define (generate-metadata? a)
    (clr-is System.EnterpriseServices.Internal.GenerateMetadata a))
  (define-method-port
    generate-signed
    System.EnterpriseServices.Internal.GenerateMetadata
    GenerateSigned
    (System.String
      System.String
      System.String
      System.Boolean
      System.String&))
  (define-method-port
    search-path
    System.EnterpriseServices.Internal.GenerateMetadata
    SearchPath
    (static:
      System.Int32
      System.String
      System.String
      System.String
      System.Int32
      System.String
      System.Int32[]))
  (define-method-port
    generate-meta-data
    System.EnterpriseServices.Internal.GenerateMetadata
    GenerateMetaData
    (System.String
      System.String
      System.String
      System.Byte[]
      System.Reflection.StrongNameKeyPair))
  (define-method-port
    generate
    System.EnterpriseServices.Internal.GenerateMetadata
    Generate
    (System.String System.String System.String)))
