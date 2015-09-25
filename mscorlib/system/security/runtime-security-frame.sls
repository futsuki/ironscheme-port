(library (system security runtime-security-frame)
  (export new
          is?
          runtime-security-frame?
          domain-get
          domain-set!
          domain-update!
          method-get
          method-set!
          method-update!
          assert-get
          assert-set!
          assert-update!
          deny-get
          deny-set!
          deny-update!
          permitonly-get
          permitonly-set!
          permitonly-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Security.RuntimeSecurityFrame a ...)))))
  (define (is? a) (clr-is System.Security.RuntimeSecurityFrame a))
  (define (runtime-security-frame? a)
    (clr-is System.Security.RuntimeSecurityFrame a))
  (define-field-port
    domain-get
    domain-set!
    domain-update!
    ()
    System.Security.RuntimeSecurityFrame
    domain
    System.AppDomain)
  (define-field-port
    method-get
    method-set!
    method-update!
    ()
    System.Security.RuntimeSecurityFrame
    method
    System.Reflection.MethodInfo)
  (define-field-port
    assert-get
    assert-set!
    assert-update!
    ()
    System.Security.RuntimeSecurityFrame
    assert
    System.Security.RuntimeDeclSecurityEntry)
  (define-field-port
    deny-get
    deny-set!
    deny-update!
    ()
    System.Security.RuntimeSecurityFrame
    deny
    System.Security.RuntimeDeclSecurityEntry)
  (define-field-port
    permitonly-get
    permitonly-set!
    permitonly-update!
    ()
    System.Security.RuntimeSecurityFrame
    permitonly
    System.Security.RuntimeDeclSecurityEntry))
