(library (system component-model list-changed-event-args)
  (export new
          is?
          list-changed-event-args?
          list-changed-type
          old-index
          new-index
          property-descriptor)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.ListChangedEventArgs
             a
             ...)))))
  (define (is? a) (clr-is System.ComponentModel.ListChangedEventArgs a))
  (define (list-changed-event-args? a)
    (clr-is System.ComponentModel.ListChangedEventArgs a))
  (define-field-port
    list-changed-type
    #f
    #f
    (property:)
    System.ComponentModel.ListChangedEventArgs
    ListChangedType
    System.ComponentModel.ListChangedType)
  (define-field-port
    old-index
    #f
    #f
    (property:)
    System.ComponentModel.ListChangedEventArgs
    OldIndex
    System.Int32)
  (define-field-port
    new-index
    #f
    #f
    (property:)
    System.ComponentModel.ListChangedEventArgs
    NewIndex
    System.Int32)
  (define-field-port
    property-descriptor
    #f
    #f
    (property:)
    System.ComponentModel.ListChangedEventArgs
    PropertyDescriptor
    System.ComponentModel.PropertyDescriptor))
