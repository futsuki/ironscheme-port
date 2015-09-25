(library (system linq expressions element-init)
  (export is? element-init? to-string add-method arguments)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Linq.Expressions.ElementInit a))
  (define (element-init? a)
    (clr-is System.Linq.Expressions.ElementInit a))
  (define-method-port
    to-string
    System.Linq.Expressions.ElementInit
    ToString
    (System.String))
  (define-field-port
    add-method
    #f
    #f
    (property:)
    System.Linq.Expressions.ElementInit
    AddMethod
    System.Reflection.MethodInfo)
  (define-field-port
    arguments
    #f
    #f
    (property:)
    System.Linq.Expressions.ElementInit
    Arguments
    "System.Collections.ObjectModel.ReadOnlyCollection`1[[System.Linq.Expressions.Expression, System.Core, Version=3.5.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]"))
