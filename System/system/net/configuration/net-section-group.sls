(library (system net configuration net-section-group)
  (export new
          is?
          net-section-group?
          get-section-group
          authentication-modules
          connection-management
          default-proxy
          mail-settings
          request-caching
          settings
          web-request-modules)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Net.Configuration.NetSectionGroup a ...)))))
  (define (is? a) (clr-is System.Net.Configuration.NetSectionGroup a))
  (define (net-section-group? a)
    (clr-is System.Net.Configuration.NetSectionGroup a))
  (define-method-port
    get-section-group
    System.Net.Configuration.NetSectionGroup
    GetSectionGroup
    (static:
      System.Net.Configuration.NetSectionGroup
      System.Configuration.Configuration))
  (define-field-port
    authentication-modules
    #f
    #f
    (property:)
    System.Net.Configuration.NetSectionGroup
    AuthenticationModules
    System.Net.Configuration.AuthenticationModulesSection)
  (define-field-port
    connection-management
    #f
    #f
    (property:)
    System.Net.Configuration.NetSectionGroup
    ConnectionManagement
    System.Net.Configuration.ConnectionManagementSection)
  (define-field-port
    default-proxy
    #f
    #f
    (property:)
    System.Net.Configuration.NetSectionGroup
    DefaultProxy
    System.Net.Configuration.DefaultProxySection)
  (define-field-port
    mail-settings
    #f
    #f
    (property:)
    System.Net.Configuration.NetSectionGroup
    MailSettings
    System.Net.Configuration.MailSettingsSectionGroup)
  (define-field-port
    request-caching
    #f
    #f
    (property:)
    System.Net.Configuration.NetSectionGroup
    RequestCaching
    System.Net.Configuration.RequestCachingSection)
  (define-field-port
    settings
    #f
    #f
    (property:)
    System.Net.Configuration.NetSectionGroup
    Settings
    System.Net.Configuration.SettingsSection)
  (define-field-port
    web-request-modules
    #f
    #f
    (property:)
    System.Net.Configuration.NetSectionGroup
    WebRequestModules
    System.Net.Configuration.WebRequestModulesSection))
