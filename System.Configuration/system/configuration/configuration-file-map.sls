(library (system configuration configuration-file-map)
  (export new
          is?
          configuration-file-map?
          clone
          machine-config-filename-get
          machine-config-filename-set!
          machine-config-filename-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Configuration.ConfigurationFileMap a ...)))))
  (define (is? a) (clr-is System.Configuration.ConfigurationFileMap a))
  (define (configuration-file-map? a)
    (clr-is System.Configuration.ConfigurationFileMap a))
  (define-method-port
    clone
    System.Configuration.ConfigurationFileMap
    Clone
    (System.Object))
  (define-field-port
    machine-config-filename-get
    machine-config-filename-set!
    machine-config-filename-update!
    (property:)
    System.Configuration.ConfigurationFileMap
    MachineConfigFilename
    System.String))
