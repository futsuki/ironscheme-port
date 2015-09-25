(library (system linq expressions member-list-binding)
  (export is? member-list-binding? initializers)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Linq.Expressions.MemberListBinding a))
  (define (member-list-binding? a)
    (clr-is System.Linq.Expressions.MemberListBinding a))
  (define-field-port
    initializers
    #f
    #f
    (property:)
    System.Linq.Expressions.MemberListBinding
    Initializers
    "System.Collections.ObjectModel.ReadOnlyCollection`1[[System.Linq.Expressions.ElementInit, System.Core, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"))
