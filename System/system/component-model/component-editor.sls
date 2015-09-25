(library (system component-model component-editor)
  (export is? component-editor? edit-component?)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.ComponentModel.ComponentEditor a))
  (define (component-editor? a)
    (clr-is System.ComponentModel.ComponentEditor a))
  (define-method-port
    edit-component?
    System.ComponentModel.ComponentEditor
    EditComponent
    (System.Boolean
      System.ComponentModel.ITypeDescriptorContext
      System.Object)
    (System.Boolean System.Object)))
