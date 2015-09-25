(library (system diagnostics event-instance)
  (export new
          is?
          event-instance?
          category-id-get
          category-id-set!
          category-id-update!
          entry-type-get
          entry-type-set!
          entry-type-update!
          instance-id-get
          instance-id-set!
          instance-id-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Diagnostics.EventInstance a ...)))))
  (define (is? a) (clr-is System.Diagnostics.EventInstance a))
  (define (event-instance? a)
    (clr-is System.Diagnostics.EventInstance a))
  (define-field-port
    category-id-get
    category-id-set!
    category-id-update!
    (property:)
    System.Diagnostics.EventInstance
    CategoryId
    System.Int32)
  (define-field-port
    entry-type-get
    entry-type-set!
    entry-type-update!
    (property:)
    System.Diagnostics.EventInstance
    EntryType
    System.Diagnostics.EventLogEntryType)
  (define-field-port
    instance-id-get
    instance-id-set!
    instance-id-update!
    (property:)
    System.Diagnostics.EventInstance
    InstanceId
    System.Int64))
