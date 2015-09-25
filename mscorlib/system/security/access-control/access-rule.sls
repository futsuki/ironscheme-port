(library (system security access-control access-rule)
  (export is? access-rule? access-control-type)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Security.AccessControl.AccessRule a))
  (define (access-rule? a)
    (clr-is System.Security.AccessControl.AccessRule a))
  (define-field-port
    access-control-type
    #f
    #f
    (property:)
    System.Security.AccessControl.AccessRule
    AccessControlType
    System.Security.AccessControl.AccessControlType))
