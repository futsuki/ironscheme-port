(library (system security access-control common-object-security)
  (export is? common-object-security? get-access-rules get-audit-rules)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Security.AccessControl.CommonObjectSecurity a))
  (define (common-object-security? a)
    (clr-is System.Security.AccessControl.CommonObjectSecurity a))
  (define-method-port
    get-access-rules
    System.Security.AccessControl.CommonObjectSecurity
    GetAccessRules
    (System.Security.AccessControl.AuthorizationRuleCollection
      System.Boolean
      System.Boolean
      System.Type))
  (define-method-port
    get-audit-rules
    System.Security.AccessControl.CommonObjectSecurity
    GetAuditRules
    (System.Security.AccessControl.AuthorizationRuleCollection
      System.Boolean
      System.Boolean
      System.Type)))
