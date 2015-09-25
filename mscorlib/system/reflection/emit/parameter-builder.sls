(library (system reflection emit parameter-builder)
  (export is?
          parameter-builder?
          get-token
          set-custom-attribute
          set-constant
          set-marshal
          attributes
          is-in?
          is-out?
          is-optional?
          name
          position)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Reflection.Emit.ParameterBuilder a))
  (define (parameter-builder? a)
    (clr-is System.Reflection.Emit.ParameterBuilder a))
  (define-method-port
    get-token
    System.Reflection.Emit.ParameterBuilder
    GetToken
    (System.Reflection.Emit.ParameterToken))
  (define-method-port
    set-custom-attribute
    System.Reflection.Emit.ParameterBuilder
    SetCustomAttribute
    (System.Void System.Reflection.ConstructorInfo System.Byte[])
    (System.Void System.Reflection.Emit.CustomAttributeBuilder))
  (define-method-port
    set-constant
    System.Reflection.Emit.ParameterBuilder
    SetConstant
    (System.Void System.Object))
  (define-method-port
    set-marshal
    System.Reflection.Emit.ParameterBuilder
    SetMarshal
    (System.Void System.Reflection.Emit.UnmanagedMarshal))
  (define-field-port
    attributes
    #f
    #f
    (property:)
    System.Reflection.Emit.ParameterBuilder
    Attributes
    System.Int32)
  (define-field-port
    is-in?
    #f
    #f
    (property:)
    System.Reflection.Emit.ParameterBuilder
    IsIn
    System.Boolean)
  (define-field-port
    is-out?
    #f
    #f
    (property:)
    System.Reflection.Emit.ParameterBuilder
    IsOut
    System.Boolean)
  (define-field-port
    is-optional?
    #f
    #f
    (property:)
    System.Reflection.Emit.ParameterBuilder
    IsOptional
    System.Boolean)
  (define-field-port
    name
    #f
    #f
    (property:)
    System.Reflection.Emit.ParameterBuilder
    Name
    System.String)
  (define-field-port
    position
    #f
    #f
    (property:)
    System.Reflection.Emit.ParameterBuilder
    Position
    System.Int32))
