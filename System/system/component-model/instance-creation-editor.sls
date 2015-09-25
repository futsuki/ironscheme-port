(library (system component-model instance-creation-editor)
  (export is? instance-creation-editor? create-instance text)
  (import (ironscheme-clr-port))
  (define (is? a)
    (clr-is System.ComponentModel.InstanceCreationEditor a))
  (define (instance-creation-editor? a)
    (clr-is System.ComponentModel.InstanceCreationEditor a))
  (define-method-port
    create-instance
    System.ComponentModel.InstanceCreationEditor
    CreateInstance
    (System.Object
      System.ComponentModel.ITypeDescriptorContext
      System.Type))
  (define-field-port
    text
    #f
    #f
    (property:)
    System.ComponentModel.InstanceCreationEditor
    Text
    System.String))
