(library (system configuration section-data)
  (export new
          is?
          section-data?
          section-name
          type-name
          allow-location?
          allow-definition
          file-name-get
          file-name-set!
          file-name-update!
          require-permission?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Configuration.SectionData a ...)))))
  (define (is? a) (clr-is System.Configuration.SectionData a))
  (define (section-data? a) (clr-is System.Configuration.SectionData a))
  (define-field-port
    section-name
    #f
    #f
    ()
    System.Configuration.SectionData
    SectionName
    System.String)
  (define-field-port
    type-name
    #f
    #f
    ()
    System.Configuration.SectionData
    TypeName
    System.String)
  (define-field-port
    allow-location?
    #f
    #f
    ()
    System.Configuration.SectionData
    AllowLocation
    System.Boolean)
  (define-field-port
    allow-definition
    #f
    #f
    ()
    System.Configuration.SectionData
    AllowDefinition
    System.Configuration.AllowDefinition)
  (define-field-port
    file-name-get
    file-name-set!
    file-name-update!
    ()
    System.Configuration.SectionData
    FileName
    System.String)
  (define-field-port
    require-permission?
    #f
    #f
    ()
    System.Configuration.SectionData
    RequirePermission
    System.Boolean))
