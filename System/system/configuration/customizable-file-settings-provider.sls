(library (system configuration customizable-file-settings-provider)
  (export new
          is?
          customizable-file-settings-provider?
          get-property-values
          set-user-roaming-file-name?
          get-previous-version
          initialize
          set-property-values
          set-create
          set-user-local-file-name?
          set-product-name?
          set-user-roaming-path?
          reset
          set-company-name?
          set-version?
          upgrade
          set-user-local-path?
          prev-user-roaming-full-path
          prev-user-local-full-path
          user-roaming-path
          user-local-path
          user-roaming-name
          user-local-name
          user-config-selector-get
          user-config-selector-set!
          user-config-selector-update!
          is-version-major?-get
          is-version-major?-set!
          is-version-major?-update!
          is-version-minor?-get
          is-version-minor?-set!
          is-version-minor?-update!
          is-version-build?-get
          is-version-build?-set!
          is-version-build?-update!
          is-version-revision?-get
          is-version-revision?-set!
          is-version-revision?-update!
          is-company?-get
          is-company?-set!
          is-company?-update!
          is-evidence?-get
          is-evidence?-set!
          is-evidence?-update!
          name
          application-name-get
          application-name-set!
          application-name-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.CustomizableFileSettingsProvider
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.CustomizableFileSettingsProvider a))
  (define (customizable-file-settings-provider? a)
    (clr-is System.Configuration.CustomizableFileSettingsProvider a))
  (define-method-port
    get-property-values
    System.Configuration.CustomizableFileSettingsProvider
    GetPropertyValues
    (System.Configuration.SettingsPropertyValueCollection
      System.Configuration.SettingsContext
      System.Configuration.SettingsPropertyCollection))
  (define-method-port
    set-user-roaming-file-name?
    System.Configuration.CustomizableFileSettingsProvider
    SetUserRoamingFileName
    (static: System.Boolean System.String))
  (define-method-port
    get-previous-version
    System.Configuration.CustomizableFileSettingsProvider
    GetPreviousVersion
    (System.Configuration.SettingsPropertyValue
      System.Configuration.SettingsContext
      System.Configuration.SettingsProperty))
  (define-method-port
    initialize
    System.Configuration.CustomizableFileSettingsProvider
    Initialize
    (System.Void
      System.String
      System.Collections.Specialized.NameValueCollection))
  (define-method-port
    set-property-values
    System.Configuration.CustomizableFileSettingsProvider
    SetPropertyValues
    (System.Void
      System.Configuration.SettingsContext
      System.Configuration.SettingsPropertyValueCollection))
  (define-method-port
    set-create
    System.Configuration.CustomizableFileSettingsProvider
    setCreate
    (static: System.Void))
  (define-method-port
    set-user-local-file-name?
    System.Configuration.CustomizableFileSettingsProvider
    SetUserLocalFileName
    (static: System.Boolean System.String))
  (define-method-port
    set-product-name?
    System.Configuration.CustomizableFileSettingsProvider
    SetProductName
    (static: System.Boolean System.String))
  (define-method-port
    set-user-roaming-path?
    System.Configuration.CustomizableFileSettingsProvider
    SetUserRoamingPath
    (static: System.Boolean System.String))
  (define-method-port
    reset
    System.Configuration.CustomizableFileSettingsProvider
    Reset
    (System.Void System.Configuration.SettingsContext))
  (define-method-port
    set-company-name?
    System.Configuration.CustomizableFileSettingsProvider
    SetCompanyName
    (static: System.Boolean System.String))
  (define-method-port
    set-version?
    System.Configuration.CustomizableFileSettingsProvider
    SetVersion
    (static: System.Boolean System.String)
    (static:
      System.Boolean
      System.Int32
      System.Int32
      System.Int32
      System.Int32)
    (static: System.Boolean System.Int32 System.Int32 System.Int32)
    (static: System.Boolean System.Int32 System.Int32)
    (static: System.Boolean System.Int32))
  (define-method-port
    upgrade
    System.Configuration.CustomizableFileSettingsProvider
    Upgrade
    (System.Void
      System.Configuration.SettingsContext
      System.Configuration.SettingsPropertyCollection))
  (define-method-port
    set-user-local-path?
    System.Configuration.CustomizableFileSettingsProvider
    SetUserLocalPath
    (static: System.Boolean System.String))
  (define-field-port
    prev-user-roaming-full-path
    #f
    #f
    (static: property:)
    System.Configuration.CustomizableFileSettingsProvider
    PrevUserRoamingFullPath
    System.String)
  (define-field-port
    prev-user-local-full-path
    #f
    #f
    (static: property:)
    System.Configuration.CustomizableFileSettingsProvider
    PrevUserLocalFullPath
    System.String)
  (define-field-port
    user-roaming-path
    #f
    #f
    (static: property:)
    System.Configuration.CustomizableFileSettingsProvider
    UserRoamingPath
    System.String)
  (define-field-port
    user-local-path
    #f
    #f
    (static: property:)
    System.Configuration.CustomizableFileSettingsProvider
    UserLocalPath
    System.String)
  (define-field-port
    user-roaming-name
    #f
    #f
    (static: property:)
    System.Configuration.CustomizableFileSettingsProvider
    UserRoamingName
    System.String)
  (define-field-port
    user-local-name
    #f
    #f
    (static: property:)
    System.Configuration.CustomizableFileSettingsProvider
    UserLocalName
    System.String)
  (define-field-port
    user-config-selector-get
    user-config-selector-set!
    user-config-selector-update!
    (static: property:)
    System.Configuration.CustomizableFileSettingsProvider
    UserConfigSelector
    System.Configuration.UserConfigLocationOption)
  (define-field-port
    is-version-major?-get
    is-version-major?-set!
    is-version-major?-update!
    (static: property:)
    System.Configuration.CustomizableFileSettingsProvider
    IsVersionMajor
    System.Boolean)
  (define-field-port
    is-version-minor?-get
    is-version-minor?-set!
    is-version-minor?-update!
    (static: property:)
    System.Configuration.CustomizableFileSettingsProvider
    IsVersionMinor
    System.Boolean)
  (define-field-port
    is-version-build?-get
    is-version-build?-set!
    is-version-build?-update!
    (static: property:)
    System.Configuration.CustomizableFileSettingsProvider
    IsVersionBuild
    System.Boolean)
  (define-field-port
    is-version-revision?-get
    is-version-revision?-set!
    is-version-revision?-update!
    (static: property:)
    System.Configuration.CustomizableFileSettingsProvider
    IsVersionRevision
    System.Boolean)
  (define-field-port
    is-company?-get
    is-company?-set!
    is-company?-update!
    (static: property:)
    System.Configuration.CustomizableFileSettingsProvider
    IsCompany
    System.Boolean)
  (define-field-port
    is-evidence?-get
    is-evidence?-set!
    is-evidence?-update!
    (static: property:)
    System.Configuration.CustomizableFileSettingsProvider
    IsEvidence
    System.Boolean)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Configuration.CustomizableFileSettingsProvider
    Name
    System.String)
  (define-field-port
    application-name-get
    application-name-set!
    application-name-update!
    (property:)
    System.Configuration.CustomizableFileSettingsProvider
    ApplicationName
    System.String))
