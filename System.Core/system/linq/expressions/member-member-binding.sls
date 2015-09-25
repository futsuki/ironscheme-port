(library (system linq expressions member-member-binding)
  (export is? member-member-binding? bindings)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.Linq.Expressions.MemberMemberBinding a))
  (define (member-member-binding? a)
    (clr-is System.Linq.Expressions.MemberMemberBinding a))
  (define-field-port
    bindings
    #f
    #f
    (property:)
    System.Linq.Expressions.MemberMemberBinding
    Bindings
    "System.Collections.ObjectModel.ReadOnlyCollection`1[[System.Linq.Expressions.MemberBinding, System.Core, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"))
