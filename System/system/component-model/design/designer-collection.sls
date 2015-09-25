(library (system component-model design designer-collection)
  (export new is? designer-collection? get-enumerator count item)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.Design.DesignerCollection
             a
             ...)))))
  (define (is? a)
    (clr-is System.ComponentModel.Design.DesignerCollection a))
  (define (designer-collection? a)
    (clr-is System.ComponentModel.Design.DesignerCollection a))
  (define-method-port
    get-enumerator
    System.ComponentModel.Design.DesignerCollection
    GetEnumerator
    (System.Collections.IEnumerator))
  (define-field-port
    count
    #f
    #f
    (property:)
    System.ComponentModel.Design.DesignerCollection
    Count
    System.Int32)
  (define-field-port
    item
    #f
    #f
    (property:)
    System.ComponentModel.Design.DesignerCollection
    Item
    System.ComponentModel.Design.IDesignerHost))
