(library (system component-model design designer-verb)
  (export new
          is?
          designer-verb?
          to-string
          text
          description-get
          description-set!
          description-update!)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new System.ComponentModel.Design.DesignerVerb a ...)))))
  (define (is? a) (clr-is System.ComponentModel.Design.DesignerVerb a))
  (define (designer-verb? a)
    (clr-is System.ComponentModel.Design.DesignerVerb a))
  (define-method-port
    to-string
    System.ComponentModel.Design.DesignerVerb
    ToString
    (System.String))
  (define-field-port
    text
    #f
    #f
    (property:)
    System.ComponentModel.Design.DesignerVerb
    Text
    System.String)
  (define-field-port
    description-get
    description-set!
    description-update!
    (property:)
    System.ComponentModel.Design.DesignerVerb
    Description
    System.String))
