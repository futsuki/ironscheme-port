(library (system security access-control authorization-rule-collection)
  (export is? authorization-rule-collection? copy-to item)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is
      System.Security.AccessControl.AuthorizationRuleCollection
      a))
  (define (authorization-rule-collection? a)
    (clr-is
      System.Security.AccessControl.AuthorizationRuleCollection
      a))
  (define-method-port
    copy-to
    System.Security.AccessControl.AuthorizationRuleCollection
    CopyTo
    (System.Void
      System.Security.AccessControl.AuthorizationRule[]
      System.Int32))
  (define-field-port
    item
    #f
    #f
    (property:)
    System.Security.AccessControl.AuthorizationRuleCollection
    Item
    System.Security.AccessControl.AuthorizationRule))
