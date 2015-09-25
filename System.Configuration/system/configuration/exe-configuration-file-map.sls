(library (system configuration exe-configuration-file-map)
  (export new
          is?
          exe-configuration-file-map?
          clone
          exe-config-filename-get
          exe-config-filename-set!
          exe-config-filename-update!
          local-user-config-filename-get
          local-user-config-filename-set!
          local-user-config-filename-update!
          roaming-user-config-filename-get
          roaming-user-config-filename-set!
          roaming-user-config-filename-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Configuration.ExeConfigurationFileMap
             a
             ...)))))
  (define (is? a)
    (clr-is System.Configuration.ExeConfigurationFileMap a))
  (define (exe-configuration-file-map? a)
    (clr-is System.Configuration.ExeConfigurationFileMap a))
  (define-method-port
    clone
    System.Configuration.ExeConfigurationFileMap
    Clone
    (System.Object))
  (define-field-port
    exe-config-filename-get
    exe-config-filename-set!
    exe-config-filename-update!
    (property:)
    System.Configuration.ExeConfigurationFileMap
    ExeConfigFilename
    System.String)
  (define-field-port
    local-user-config-filename-get
    local-user-config-filename-set!
    local-user-config-filename-update!
    (property:)
    System.Configuration.ExeConfigurationFileMap
    LocalUserConfigFilename
    System.String)
  (define-field-port
    roaming-user-config-filename-get
    roaming-user-config-filename-set!
    roaming-user-config-filename-update!
    (property:)
    System.Configuration.ExeConfigurationFileMap
    RoamingUserConfigFilename
    System.String))
