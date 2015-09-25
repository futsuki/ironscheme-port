(library (system xml serialization members-serialization-source)
  (export new is? members-serialization-source? get-hash-code equals?)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.MembersSerializationSource
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.MembersSerializationSource a))
  (define (members-serialization-source? a)
    (clr-is System.Xml.Serialization.MembersSerializationSource a))
  (define-method-port
    get-hash-code
    System.Xml.Serialization.MembersSerializationSource
    GetHashCode
    (System.Int32))
  (define-method-port
    equals?
    System.Xml.Serialization.MembersSerializationSource
    Equals
    (System.Boolean System.Object)))
