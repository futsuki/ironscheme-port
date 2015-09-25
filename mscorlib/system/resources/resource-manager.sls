(library (system resources resource-manager)
  (export new
          is?
          resource-manager?
          release-all-resources
          get-stream
          get-object
          get-string
          get-resource-set
          create-file-based-resource-manager
          header-version-number
          magic-number
          base-name
          ignore-case?-get
          ignore-case?-set!
          ignore-case?-update!
          resource-set-type)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Resources.ResourceManager a ...)))))
  (define (is? a) (clr-is System.Resources.ResourceManager a))
  (define (resource-manager? a)
    (clr-is System.Resources.ResourceManager a))
  (define-method-port
    release-all-resources
    System.Resources.ResourceManager
    ReleaseAllResources
    (System.Void))
  (define-method-port
    get-stream
    System.Resources.ResourceManager
    GetStream
    (System.IO.UnmanagedMemoryStream
      System.String
      System.Globalization.CultureInfo)
    (System.IO.UnmanagedMemoryStream System.String))
  (define-method-port
    get-object
    System.Resources.ResourceManager
    GetObject
    (System.Object System.String System.Globalization.CultureInfo)
    (System.Object System.String))
  (define-method-port
    get-string
    System.Resources.ResourceManager
    GetString
    (System.String System.String System.Globalization.CultureInfo)
    (System.String System.String))
  (define-method-port
    get-resource-set
    System.Resources.ResourceManager
    GetResourceSet
    (System.Resources.ResourceSet
      System.Globalization.CultureInfo
      System.Boolean
      System.Boolean))
  (define-method-port
    create-file-based-resource-manager
    System.Resources.ResourceManager
    CreateFileBasedResourceManager
    (static:
      System.Resources.ResourceManager
      System.String
      System.String
      System.Type))
  (define-field-port
    header-version-number
    #f
    #f
    (static:)
    System.Resources.ResourceManager
    HeaderVersionNumber
    System.Int32)
  (define-field-port
    magic-number
    #f
    #f
    (static:)
    System.Resources.ResourceManager
    MagicNumber
    System.Int32)
  (define-field-port
    base-name
    #f
    #f
    (property:)
    System.Resources.ResourceManager
    BaseName
    System.String)
  (define-field-port
    ignore-case?-get
    ignore-case?-set!
    ignore-case?-update!
    (property:)
    System.Resources.ResourceManager
    IgnoreCase
    System.Boolean)
  (define-field-port
    resource-set-type
    #f
    #f
    (property:)
    System.Resources.ResourceManager
    ResourceSetType
    System.Type))
