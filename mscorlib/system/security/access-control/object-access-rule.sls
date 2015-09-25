(library (system security access-control object-access-rule)
  (export is?
          object-access-rule?
          inherited-object-type
          object-flags
          object-type)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Security.AccessControl.ObjectAccessRule a))
  (define (object-access-rule? a)
    (clr-is System.Security.AccessControl.ObjectAccessRule a))
  (define-field-port
    inherited-object-type
    #f
    #f
    (property:)
    System.Security.AccessControl.ObjectAccessRule
    InheritedObjectType
    System.Guid)
  (define-field-port
    object-flags
    #f
    #f
    (property:)
    System.Security.AccessControl.ObjectAccessRule
    ObjectFlags
    System.Security.AccessControl.ObjectAceFlags)
  (define-field-port
    object-type
    #f
    #f
    (property:)
    System.Security.AccessControl.ObjectAccessRule
    ObjectType
    System.Guid))
