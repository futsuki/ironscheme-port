(library (system security access-control privilege-not-held-exception)
  (export new
          is?
          privilege-not-held-exception?
          get-object-data
          privilege-name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.AccessControl.PrivilegeNotHeldException
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.AccessControl.PrivilegeNotHeldException a))
  (define (privilege-not-held-exception? a)
    (clr-is System.Security.AccessControl.PrivilegeNotHeldException a))
  (define-method-port
    get-object-data
    System.Security.AccessControl.PrivilegeNotHeldException
    GetObjectData
    (System.Void
      System.Runtime.Serialization.SerializationInfo
      System.Runtime.Serialization.StreamingContext))
  (define-field-port
    privilege-name
    #f
    #f
    (property:)
    System.Security.AccessControl.PrivilegeNotHeldException
    PrivilegeName
    System.String))
