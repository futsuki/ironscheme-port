(library (system xml linq xobject-change-event-args)
  (export new
          is?
          xobject-change-event-args?
          add
          name
          remove
          value
          object-change)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.Xml.Linq.XObjectChangeEventArgs a ...)))))
  (define (is? a) (clr-is System.Xml.Linq.XObjectChangeEventArgs a))
  (define (xobject-change-event-args? a)
    (clr-is System.Xml.Linq.XObjectChangeEventArgs a))
  (define-field-port
    add
    #f
    #f
    (static:)
    System.Xml.Linq.XObjectChangeEventArgs
    Add
    System.Xml.Linq.XObjectChangeEventArgs)
  (define-field-port
    name
    #f
    #f
    (static:)
    System.Xml.Linq.XObjectChangeEventArgs
    Name
    System.Xml.Linq.XObjectChangeEventArgs)
  (define-field-port
    remove
    #f
    #f
    (static:)
    System.Xml.Linq.XObjectChangeEventArgs
    Remove
    System.Xml.Linq.XObjectChangeEventArgs)
  (define-field-port
    value
    #f
    #f
    (static:)
    System.Xml.Linq.XObjectChangeEventArgs
    Value
    System.Xml.Linq.XObjectChangeEventArgs)
  (define-field-port
    object-change
    #f
    #f
    (property:)
    System.Xml.Linq.XObjectChangeEventArgs
    ObjectChange
    System.Xml.Linq.XObjectChange))
