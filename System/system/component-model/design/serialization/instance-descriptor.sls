(library (system
          component-model
          design
          serialization
          instance-descriptor)
  (export new
          is?
          instance-descriptor?
          invoke
          arguments
          is-complete?
          member-info)
  (import (ironscheme-clr-port))
  (define-syntax new
    (lambda (e)
      (syntax-case e ()
        ((_ a ...)
         #'(clr-new
             System.ComponentModel.Design.Serialization.InstanceDescriptor
             a
             ...)))))
  (define (is? a)
    (clr-is
      System.ComponentModel.Design.Serialization.InstanceDescriptor
      a))
  (define (instance-descriptor? a)
    (clr-is
      System.ComponentModel.Design.Serialization.InstanceDescriptor
      a))
  (define-method-port
    invoke
    System.ComponentModel.Design.Serialization.InstanceDescriptor
    Invoke
    (System.Object))
  (define-field-port
    arguments
    #f
    #f
    (property:)
    System.ComponentModel.Design.Serialization.InstanceDescriptor
    Arguments
    System.Collections.ICollection)
  (define-field-port
    is-complete?
    #f
    #f
    (property:)
    System.ComponentModel.Design.Serialization.InstanceDescriptor
    IsComplete
    System.Boolean)
  (define-field-port
    member-info
    #f
    #f
    (property:)
    System.ComponentModel.Design.Serialization.InstanceDescriptor
    MemberInfo
    System.Reflection.MemberInfo))
