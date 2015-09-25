(library (system diagnostics event-source-creation-data)
  (export new
          is?
          event-source-creation-data?
          category-count-get
          category-count-set!
          category-count-update!
          category-resource-file-get
          category-resource-file-set!
          category-resource-file-update!
          log-name-get
          log-name-set!
          log-name-update!
          machine-name-get
          machine-name-set!
          machine-name-update!
          message-resource-file-get
          message-resource-file-set!
          message-resource-file-update!
          parameter-resource-file-get
          parameter-resource-file-set!
          parameter-resource-file-update!
          source-get
          source-set!
          source-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Diagnostics.EventSourceCreationData
             a
             ...)))))
  (define (is? a) (clr-is System.Diagnostics.EventSourceCreationData a))
  (define (event-source-creation-data? a)
    (clr-is System.Diagnostics.EventSourceCreationData a))
  (define-field-port
    category-count-get
    category-count-set!
    category-count-update!
    (property:)
    System.Diagnostics.EventSourceCreationData
    CategoryCount
    System.Int32)
  (define-field-port
    category-resource-file-get
    category-resource-file-set!
    category-resource-file-update!
    (property:)
    System.Diagnostics.EventSourceCreationData
    CategoryResourceFile
    System.String)
  (define-field-port
    log-name-get
    log-name-set!
    log-name-update!
    (property:)
    System.Diagnostics.EventSourceCreationData
    LogName
    System.String)
  (define-field-port
    machine-name-get
    machine-name-set!
    machine-name-update!
    (property:)
    System.Diagnostics.EventSourceCreationData
    MachineName
    System.String)
  (define-field-port
    message-resource-file-get
    message-resource-file-set!
    message-resource-file-update!
    (property:)
    System.Diagnostics.EventSourceCreationData
    MessageResourceFile
    System.String)
  (define-field-port
    parameter-resource-file-get
    parameter-resource-file-set!
    parameter-resource-file-update!
    (property:)
    System.Diagnostics.EventSourceCreationData
    ParameterResourceFile
    System.String)
  (define-field-port
    source-get
    source-set!
    source-update!
    (property:)
    System.Diagnostics.EventSourceCreationData
    Source
    System.String))
