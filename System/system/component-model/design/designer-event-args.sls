(library (system component-model design designer-event-args)
  (export new is? designer-event-args? designer)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.Design.DesignerEventArgs
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.Design.DesignerEventArgs a))
  (define (designer-event-args? a)
    (clr-is System.ComponentModel.Design.DesignerEventArgs a))
  (define-field-port
    designer
    #f
    #f
    (property:)
    System.ComponentModel.Design.DesignerEventArgs
    Designer
    System.ComponentModel.Design.IDesignerHost))
