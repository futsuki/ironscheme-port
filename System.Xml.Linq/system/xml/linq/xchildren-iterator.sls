(library (system xml linq xchildren-iterator)
  (export new is? xchildren-iterator? get-enumerator)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Linq.XChildrenIterator a ...)))))
  (define (is? a) (clr-is System.Xml.Linq.XChildrenIterator a))
  (define (xchildren-iterator? a)
    (clr-is System.Xml.Linq.XChildrenIterator a))
  (define-method-port
    get-enumerator
    System.Xml.Linq.XChildrenIterator
    GetEnumerator
    ("System.Collections.Generic.IEnumerator`1[[System.Object, mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]")))
