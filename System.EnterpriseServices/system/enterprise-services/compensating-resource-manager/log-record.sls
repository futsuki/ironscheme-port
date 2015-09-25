(library (system
          enterprise-services
          compensating-resource-manager
          log-record)
  (export is? log-record? flags record sequence)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is
      System.EnterpriseServices.CompensatingResourceManager.LogRecord
      a))
  (define (log-record? a)
    (clr-is
      System.EnterpriseServices.CompensatingResourceManager.LogRecord
      a))
  (define-field-port
    flags
    #f
    #f
    (property:)
    System.EnterpriseServices.CompensatingResourceManager.LogRecord
    Flags
    System.EnterpriseServices.CompensatingResourceManager.LogRecordFlags)
  (define-field-port
    record
    #f
    #f
    (property:)
    System.EnterpriseServices.CompensatingResourceManager.LogRecord
    Record
    System.Object)
  (define-field-port
    sequence
    #f
    #f
    (property:)
    System.EnterpriseServices.CompensatingResourceManager.LogRecord
    Sequence
    System.Int32))
