(library (system security access-control object-audit-rule)
  (export is?
          object-audit-rule?
          inherited-object-type
          object-flags
          object-type)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Security.AccessControl.ObjectAuditRule a))
  (define (object-audit-rule? a)
    (clr-is System.Security.AccessControl.ObjectAuditRule a))
  (define-field-port
    inherited-object-type
    #f
    #f
    (property:)
    System.Security.AccessControl.ObjectAuditRule
    InheritedObjectType
    System.Guid)
  (define-field-port
    object-flags
    #f
    #f
    (property:)
    System.Security.AccessControl.ObjectAuditRule
    ObjectFlags
    System.Security.AccessControl.ObjectAceFlags)
  (define-field-port
    object-type
    #f
    #f
    (property:)
    System.Security.AccessControl.ObjectAuditRule
    ObjectType
    System.Guid))
