(library (system linq expressions member-binding)
  (export is? member-binding? to-string binding-type member)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Linq.Expressions.MemberBinding a))
  (define (member-binding? a)
    (clr-is System.Linq.Expressions.MemberBinding a))
  (define-method-port
    to-string
    System.Linq.Expressions.MemberBinding
    ToString
    (System.String))
  (define-field-port
    binding-type
    #f
    #f
    (property:)
    System.Linq.Expressions.MemberBinding
    BindingType
    System.Linq.Expressions.MemberBindingType)
  (define-field-port
    member
    #f
    #f
    (property:)
    System.Linq.Expressions.MemberBinding
    Member
    System.Reflection.MemberInfo))
