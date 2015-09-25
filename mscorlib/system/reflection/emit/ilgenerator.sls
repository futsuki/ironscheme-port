(library (system reflection emit ilgenerator)
  (export is?
          ilgenerator?
          using-namespace
          end-exception-block
          begin-except-filter-block
          emit-calli
          begin-catch-block
          end-scope
          mark-label
          throw-exception
          emit-call
          begin-scope
          declare-local
          begin-exception-block
          begin-finally-block
          emit-write-line
          emit
          define-label
          mark-sequence-point
          begin-fault-block)
  (import (ironscheme-clr-port))
  (define (is? a) (clr-is System.Reflection.Emit.ILGenerator a))
  (define (ilgenerator? a)
    (clr-is System.Reflection.Emit.ILGenerator a))
  (define-method-port
    using-namespace
    System.Reflection.Emit.ILGenerator
    UsingNamespace
    (System.Void System.String))
  (define-method-port
    end-exception-block
    System.Reflection.Emit.ILGenerator
    EndExceptionBlock
    (System.Void))
  (define-method-port
    begin-except-filter-block
    System.Reflection.Emit.ILGenerator
    BeginExceptFilterBlock
    (System.Void))
  (define-method-port
    emit-calli
    System.Reflection.Emit.ILGenerator
    EmitCalli
    (System.Void
      System.Reflection.Emit.OpCode
      System.Reflection.CallingConventions
      System.Type
      System.Type[]
      System.Type[])
    (System.Void
      System.Reflection.Emit.OpCode
      System.Runtime.InteropServices.CallingConvention
      System.Type
      System.Type[]))
  (define-method-port
    begin-catch-block
    System.Reflection.Emit.ILGenerator
    BeginCatchBlock
    (System.Void System.Type))
  (define-method-port
    end-scope
    System.Reflection.Emit.ILGenerator
    EndScope
    (System.Void))
  (define-method-port
    mark-label
    System.Reflection.Emit.ILGenerator
    MarkLabel
    (System.Void System.Reflection.Emit.Label))
  (define-method-port
    throw-exception
    System.Reflection.Emit.ILGenerator
    ThrowException
    (System.Void System.Type))
  (define-method-port
    emit-call
    System.Reflection.Emit.ILGenerator
    EmitCall
    (System.Void
      System.Reflection.Emit.OpCode
      System.Reflection.MethodInfo
      System.Type[]))
  (define-method-port
    begin-scope
    System.Reflection.Emit.ILGenerator
    BeginScope
    (System.Void))
  (define-method-port
    declare-local
    System.Reflection.Emit.ILGenerator
    DeclareLocal
    (System.Reflection.Emit.LocalBuilder System.Type System.Boolean)
    (System.Reflection.Emit.LocalBuilder System.Type))
  (define-method-port
    begin-exception-block
    System.Reflection.Emit.ILGenerator
    BeginExceptionBlock
    (System.Reflection.Emit.Label))
  (define-method-port
    begin-finally-block
    System.Reflection.Emit.ILGenerator
    BeginFinallyBlock
    (System.Void))
  (define-method-port
    emit-write-line
    System.Reflection.Emit.ILGenerator
    EmitWriteLine
    (System.Void System.String)
    (System.Void System.Reflection.Emit.LocalBuilder)
    (System.Void System.Reflection.FieldInfo))
  (define-method-port
    emit
    System.Reflection.Emit.ILGenerator
    Emit
    (System.Void System.Reflection.Emit.OpCode System.Type)
    (System.Void System.Reflection.Emit.OpCode System.String)
    (System.Void System.Reflection.Emit.OpCode System.Single)
    (System.Void
      System.Reflection.Emit.OpCode
      System.Reflection.Emit.SignatureHelper)
    (System.Void System.Reflection.Emit.OpCode System.SByte)
    (System.Void
      System.Reflection.Emit.OpCode
      System.Reflection.MethodInfo)
    (System.Void
      System.Reflection.Emit.OpCode
      System.Reflection.Emit.LocalBuilder)
    (System.Void
      System.Reflection.Emit.OpCode
      System.Reflection.Emit.Label[])
    (System.Void
      System.Reflection.Emit.OpCode
      System.Reflection.Emit.Label)
    (System.Void System.Reflection.Emit.OpCode System.Int64)
    (System.Void System.Reflection.Emit.OpCode System.Int32)
    (System.Void System.Reflection.Emit.OpCode System.Int16)
    (System.Void
      System.Reflection.Emit.OpCode
      System.Reflection.FieldInfo)
    (System.Void System.Reflection.Emit.OpCode System.Double)
    (System.Void
      System.Reflection.Emit.OpCode
      System.Reflection.ConstructorInfo)
    (System.Void System.Reflection.Emit.OpCode System.Byte)
    (System.Void System.Reflection.Emit.OpCode))
  (define-method-port
    define-label
    System.Reflection.Emit.ILGenerator
    DefineLabel
    (System.Reflection.Emit.Label))
  (define-method-port
    mark-sequence-point
    System.Reflection.Emit.ILGenerator
    MarkSequencePoint
    (System.Void
      System.Diagnostics.SymbolStore.ISymbolDocumentWriter
      System.Int32
      System.Int32
      System.Int32
      System.Int32))
  (define-method-port
    begin-fault-block
    System.Reflection.Emit.ILGenerator
    BeginFaultBlock
    (System.Void)))
