(library (system xml serialization type-member)
  (export is? type-member? get-hash-code to-string equals?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Xml.Serialization.TypeMember a))
  (define (type-member? a)
    (clr-is System.Xml.Serialization.TypeMember a))
  (define-method-port
    get-hash-code
    System.Xml.Serialization.TypeMember
    GetHashCode
    (System.Int32))
  (define-method-port
    to-string
    System.Xml.Serialization.TypeMember
    ToString
    (System.String))
  (define-method-port
    equals?
    System.Xml.Serialization.TypeMember
    Equals
    (static:
      System.Boolean
      System.Xml.Serialization.TypeMember
      System.Xml.Serialization.TypeMember)
    (System.Boolean System.Object)))
