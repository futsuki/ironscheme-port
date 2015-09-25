(library (system
          enterprise-services
          compensating-resource-manager
          clerk-monitor)
  (export new
          is?
          clerk-monitor?
          get-enumerator
          populate
          count
          item
          item)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.EnterpriseServices.CompensatingResourceManager.ClerkMonitor
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.EnterpriseServices.CompensatingResourceManager.ClerkMonitor
      a))
  (define (clerk-monitor? a)
    (clr-is
      System.EnterpriseServices.CompensatingResourceManager.ClerkMonitor
      a))
  (define-method-port
    get-enumerator
    System.EnterpriseServices.CompensatingResourceManager.ClerkMonitor
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    populate
    System.EnterpriseServices.CompensatingResourceManager.ClerkMonitor
    Populate
    (System.Void))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.EnterpriseServices.CompensatingResourceManager.ClerkMonitor
    Count
    System.Int32)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.EnterpriseServices.CompensatingResourceManager.ClerkMonitor
    Item
    System.EnterpriseServices.CompensatingResourceManager.ClerkInfo)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.EnterpriseServices.CompensatingResourceManager.ClerkMonitor
    Item
    System.EnterpriseServices.CompensatingResourceManager.ClerkInfo))
