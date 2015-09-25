(library (system reflection default-member-attribute)
  (export new is? default-member-attribute? member-name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Reflection.DefaultMemberAttribute a ...)))))
  (define (is? a) (clr-is System.Reflection.DefaultMemberAttribute a))
  (define (default-member-attribute? a)
    (clr-is System.Reflection.DefaultMemberAttribute a))
  (define-field-port
    member-name
    #f
    #f
    (property:)
    System.Reflection.DefaultMemberAttribute
    MemberName
    System.String))
