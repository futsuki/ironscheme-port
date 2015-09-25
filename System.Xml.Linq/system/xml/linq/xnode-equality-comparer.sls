(library (system xml linq xnode-equality-comparer)
  (export new is? xnode-equality-comparer? get-hash-code equals?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Linq.XNodeEqualityComparer a ...)))))
  (define (is? a) (clr-is System.Xml.Linq.XNodeEqualityComparer a))
  (define (xnode-equality-comparer? a)
    (clr-is System.Xml.Linq.XNodeEqualityComparer a))
  (define-method-port
    get-hash-code
    System.Xml.Linq.XNodeEqualityComparer
    GetHashCode
    (System.Int32 System.Xml.Linq.XNode))
  (define-method-port
    equals?
    System.Xml.Linq.XNodeEqualityComparer
    Equals
    (System.Boolean System.Xml.Linq.XNode System.Xml.Linq.XNode)))
