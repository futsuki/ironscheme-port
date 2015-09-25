(library (system xml serialization unreferenced-object-event-args)
  (export new
          is?
          unreferenced-object-event-args?
          unreferenced-id
          unreferenced-object)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.Xml.Serialization.UnreferencedObjectEventArgs
             a
             ...)))))
  (define (is? a)
    (clr-is System.Xml.Serialization.UnreferencedObjectEventArgs a))
  (define (unreferenced-object-event-args? a)
    (clr-is System.Xml.Serialization.UnreferencedObjectEventArgs a))
  (define-field-port
    unreferenced-id
    #f
    #f
    (property:)
    System.Xml.Serialization.UnreferencedObjectEventArgs
    UnreferencedId
    System.String)
  (define-field-port
    unreferenced-object
    #f
    #f
    (property:)
    System.Xml.Serialization.UnreferencedObjectEventArgs
    UnreferencedObject
    System.Object))
