(library (system component-model attribute-collection)
  (export new
          is?
          attribute-collection?
          get-enumerator
          from-existing
          contains?
          copy-to
          matches?
          empty
          count
          item
          item)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.AttributeCollection a ...)))))
  (define (is? a) (clr-is System.ComponentModel.AttributeCollection a))
  (define (attribute-collection? a)
    (clr-is System.ComponentModel.AttributeCollection a))
  (define-method-port
    get-enumerator
    System.ComponentModel.AttributeCollection
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-method-port
    from-existing
    System.ComponentModel.AttributeCollection
    FromExisting
    (static:
      System.ComponentModel.AttributeCollection
      System.ComponentModel.AttributeCollection
      System.Attribute[]))
  (define-method-port
    contains?
    System.ComponentModel.AttributeCollection
    Contains
    (System.Boolean System.Attribute[])
    (System.Boolean System.Attribute))
  (define-method-port
    copy-to
    System.ComponentModel.AttributeCollection
    CopyTo
    (System.Void System.Array System.Int32))
  (define-method-port
    matches?
    System.ComponentModel.AttributeCollection
    Matches
    (System.Boolean System.Attribute[])
    (System.Boolean System.Attribute))
  (define-field-port
    empty
    #f
    #f
    (static:)
    System.ComponentModel.AttributeCollection
    Empty
    System.ComponentModel.AttributeCollection)
  (define-field-port
    count
    #f
    #f
    (property:)
    System.ComponentModel.AttributeCollection
    Count
    System.Int32)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.ComponentModel.AttributeCollection
    Item
    System.Attribute)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.ComponentModel.AttributeCollection
    Item
    System.Attribute))
