(library (system component-model design designer-option-service)
  (export is? designer-option-service? options)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.ComponentModel.Design.DesignerOptionService a))
  (define (designer-option-service? a)
    (clr-is System.ComponentModel.Design.DesignerOptionService a))
  (define-field-port
    options
    #f
    #f
    (property:)
    System.ComponentModel.Design.DesignerOptionService
    Options
    System.ComponentModel.Design.DesignerOptionService+DesignerOptionCollection))
