(library (system component-model design active-designer-event-args)
  (export new is? active-designer-event-args? new-designer old-designer)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.Design.ActiveDesignerEventArgs
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.Design.ActiveDesignerEventArgs a))
  (define (active-designer-event-args? a)
    (clr-is System.ComponentModel.Design.ActiveDesignerEventArgs a))
  (define-field-port
    new-designer
    #f
    #f
    (property:)
    System.ComponentModel.Design.ActiveDesignerEventArgs
    NewDesigner
    System.ComponentModel.Design.IDesignerHost)
  (define-field-port
    old-designer
    #f
    #f
    (property:)
    System.ComponentModel.Design.ActiveDesignerEventArgs
    OldDesigner
    System.ComponentModel.Design.IDesignerHost))
