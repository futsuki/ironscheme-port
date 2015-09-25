(library (system enterprise-services security-callers)
  (export is? security-callers? get-enumerator count item)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.EnterpriseServices.SecurityCallers a))
  (define (security-callers? a)
    (clr-is System.EnterpriseServices.SecurityCallers a))
  (define-method-port
    get-enumerator
    System.EnterpriseServices.SecurityCallers
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.EnterpriseServices.SecurityCallers
    Count
    System.Int32)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.EnterpriseServices.SecurityCallers
    Item
    System.EnterpriseServices.SecurityIdentity))
