(library (system component-model design component-rename-event-args)
  (export new
          is?
          component-rename-event-args?
          component
          new-name
          old-name)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.Design.ComponentRenameEventArgs
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.Design.ComponentRenameEventArgs a))
  (define (component-rename-event-args? a)
    (clr-is System.ComponentModel.Design.ComponentRenameEventArgs a))
  (define-field-port
    component
    #f
    #f
    (property:)
    System.ComponentModel.Design.ComponentRenameEventArgs
    Component
    System.Object)
  (define-field-port
    new-name
    #f
    #f
    (property:)
    System.ComponentModel.Design.ComponentRenameEventArgs
    NewName
    System.String)
  (define-field-port
    old-name
    #f
    #f
    (property:)
    System.ComponentModel.Design.ComponentRenameEventArgs
    OldName
    System.String))
