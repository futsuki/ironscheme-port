(library (system security policy membership-condition-helper)
  (export new is? membership-condition-helper?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Security.Policy.MembershipConditionHelper
             a
             ...)))))
  (define (is? a)
    (clr-is System.Security.Policy.MembershipConditionHelper a))
  (define (membership-condition-helper? a)
    (clr-is System.Security.Policy.MembershipConditionHelper a)))
